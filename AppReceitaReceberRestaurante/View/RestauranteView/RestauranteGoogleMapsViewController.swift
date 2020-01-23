//
//  RestauranteGoogleMapsViewController.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 28/11/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit
import GoogleMaps
import GooglePlaces




class RestauranteGoogleMapsViewController: UIViewController, GMSMapViewDelegate {
    
   
   
    @IBOutlet weak var mapView: GMSMapView!
        
    var restauranteCustomInfoWindow : RestauranteCustomInfoWindow?
    
    let regiao: CLLocationDistance = 2000
    
    var controller: RestauranteController? = RestauranteController()
    
    let pinPersonalizacao = PinPersonalizacao(frame: CGRect(x: 0, y: 0, width: 100, height: 200), foto: UIImage(named: "icon2")!, bordaCor: .white, tag: 1)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
       

        
        let camera = GMSCameraPosition.camera(withLatitude: -23.592669, longitude: -46.664963, zoom: 14)
        mapView.camera = camera
        
        self.restauranteCustomInfoWindow = RestauranteCustomInfoWindow().loadView()
        self.restauranteCustomInfoWindow?.delegate = self
        
       
        
        self.mapView.delegate = self
        mapView.isMyLocationEnabled = true
        
        mapView?.isIndoorEnabled = false
        mapView?.isTrafficEnabled = true
        mapView?.settings.compassButton = true
        
        self.restauranteCustomInfoWindow?.setUpRestauranteWindow(value: nil)
        
        self.controller?.getRestaurantes(completion: { (success) in
            if success {
                DispatchQueue.main.async {
                    self.addPinMap()
                }
            }
        })
     
        GMSServices.provideAPIKey("AIzaSyAZA2glzbuUiYlTJbqGFkh_qtLjHl7wVkw")
        GMSPlacesClient.provideAPIKey("AIzaSyAZA2glzbuUiYlTJbqGFkh_qtLjHl7wVkw")
    
    }
    
    
    func addPinMap() {
           guard let arrayBussiness = self.controller?.devolveBusiness() else {return}

           for bussiness in arrayBussiness {
               let marker = GMSMarker()
               marker.position = CLLocationCoordinate2D(latitude: bussiness.coordinates?.latitude ?? 0, longitude: bussiness.coordinates?.longitude ?? 0)
               
            
               marker.title = bussiness.name
//               marker.snippet = bussiness.categories?.first?.title
            
            let imageView = UIImageView(image: UIImage(named: "icon2"))
                       imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
                       imageView.layer.cornerRadius = 25
                       imageView.layer.borderColor = UIColor.white.cgColor
                       imageView.layer.borderWidth = 4
                       imageView.clipsToBounds = true
               
               marker.iconView = imageView
               marker.appearAnimation = .pop
               marker.map = self.mapView
               marker.tracksViewChanges = false
               marker.isFlat = false
               marker.rotation = 0
               
               mapView?.selectedMarker = marker
               
               
           }
        
            
       }
      
    
    func mapView(_ mapView: GMSMapView, didTapAt coordinate: CLLocationCoordinate2D) {
        restauranteCustomInfoWindow?.removeFromSuperview()
       
        
    }
    
    func mapView(_ mapView: GMSMapView, didChange position: GMSCameraPosition) {
        
        restauranteCustomInfoWindow?.center = mapView.projection.point(for: position.target)
        restauranteCustomInfoWindow?.center.y -= 150
       
    }
    
    func mapView(_ mapView: GMSMapView, markerInfoWindow marker: GMSMarker) -> UIView? {
           return UIView()
       }
    
    func mapView(_ mapView: GMSMapView, didTap marker: GMSMarker) -> Bool {
                
        let position = marker.position
        mapView.animate(toLocation: position)
        let point = mapView.projection.point(for: position)
        let newPoint = mapView.projection.coordinate(for: point)
        let camera = GMSCameraUpdate.setTarget(newPoint)
        mapView.animate(with: camera)
        
        let opaqueWhite = UIColor(white: 1, alpha: 0.85)
        restauranteCustomInfoWindow?.layer.backgroundColor = opaqueWhite.cgColor
        restauranteCustomInfoWindow?.layer.cornerRadius = 8
        restauranteCustomInfoWindow?.center = mapView.projection.point(for: position)
        restauranteCustomInfoWindow?.backgroundColor = .systemBackground
        
         print(" marker.title\( marker.title)")
        
        
        guard let arrayBussiness = self.controller?.devolveBusiness() else {return false}
        self.restauranteCustomInfoWindow?.setUpRestauranteWindow(value: arrayBussiness.filter({$0.name == marker.title}).first)
        
        self.mapView.addSubview(restauranteCustomInfoWindow!)
        
        return false
    }
    
    override func didReceiveMemoryWarning() {
          super.didReceiveMemoryWarning()
      }

}

extension RestauranteGoogleMapsViewController: RestauranteCustomInfoWindowDelegate {
    func clicouNoBotao(value: Business?) {
            
        if let informacoesRestaurante = self.storyboard?.instantiateViewController(identifier: "RestauranteInformacoesViewController") as? RestauranteInformacoesViewController {
            informacoesRestaurante.modelRestaurante = value
                self.navigationController?.pushViewController(informacoesRestaurante, animated: true)
             }
    }
    
    

}
