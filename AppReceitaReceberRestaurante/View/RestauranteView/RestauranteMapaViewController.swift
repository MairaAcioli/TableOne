////
////  RestauranteMapaViewController.swift
////  AppReceitaReceberRestaurante
////
////  Created by Maíra Preto on 27/10/19.
////  Copyright © 2019 Maíra Acioli. All rights reserved.
////
//

import UIKit

import GoogleMaps

import GooglePlaces




class RestauranteMapaViewController: UIViewController, GMSMapViewDelegate{


    
    var controller: RestauranteController? = RestauranteController()
    let regiao: CLLocationDistance = 2000
    var mapView: GMSMapView?

    let pinPersonalizacao = PinPersonalizacao(frame: CGRect(x: 0, y: 0, width: 100, height: 200), foto: UIImage(named: "boloDeRolo")!, bordaCor: .white, tag: 1)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        mapView?.delegate = self

        self.controller?.getRestaurantes(completion: { (success) in
            if success {
                DispatchQueue.main.async {
                    self.addPinMap()
                }
            }
        })
        
        

              
        
        GMSServices.provideAPIKey("AIzaSyAZA2glzbuUiYlTJbqGFkh_qtLjHl7wVkw")
        GMSPlacesClient.provideAPIKey("AIzaSyAZA2glzbuUiYlTJbqGFkh_qtLjHl7wVkw")

        
        
        let camera = GMSCameraPosition.camera(withLatitude: -23.592669, longitude: -46.664963, zoom: 15)
        mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
             let temp: UITextField = UITextField(frame: CGRect(x: 20, y: 20, width: 200, height: 50))
        
                  self.mapView?.addSubview(temp)
                      
        mapView?.translatesAutoresizingMaskIntoConstraints = false
        mapView?.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        mapView?.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        mapView?.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        mapView?.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
      
        mapView?.isIndoorEnabled = false
        mapView?.isTrafficEnabled = true
        mapView?.settings.compassButton = true
        
    }

    func addPinMap() {
        guard let arrayBussiness = self.controller?.devolveBusiness() else {return}

        for bussiness in arrayBussiness {
            let marker = GMSMarker()
            marker.position = CLLocationCoordinate2D(latitude: bussiness.coordinates?.latitude ?? 0, longitude: bussiness.coordinates?.longitude ?? 0)
            
            marker.title = bussiness.name
            marker.snippet = bussiness.categories?.first?.title
            
            marker.iconView = pinPersonalizacao

            marker.appearAnimation = .pop
            
            marker.groundAnchor = CGPoint(x: 0, y: 0)
         
            marker.map = mapView
            
            
        }
        
        
    }
    
//    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
//           let autoCompleteController = GMSAutocompleteViewController()
//        autoCompleteController.delegate = self as! GMSAutocompleteViewControllerDelegate
//
//           let filter = GMSAutocompleteFilter()
//           autoCompleteController.autocompleteFilter = filter
//
//           self.locationManager.startUpdatingLocation()
//           self.present(autoCompleteController, animated: true, completion: nil)
//           return false
//       }
//
//    let txtFieldSearch: UITextField = {
//        let tf = UITextField()
//        tf.borderStyle = .roundedRect
//        tf.backgroundColor = .white
//        tf.layer.borderColor = UIColor.darkGray.cgColor
//        tf.placeholder="Search for a location"
//        tf.translatesAutoresizingMaskIntoConstraints=false
//
//
//        return tf
//    }()
////
//    func setupTextField(textField: UITextField, img: UIImage){
//        textField.leftViewMode = UITextField.ViewMode.always
//        let imageView = UIImageView(frame: CGRect(x: 5, y: 5, width: 20, height: 20))
//        imageView.image = img
//        let paddingView = UIView(frame:CGRect(x: 0, y: 0, width: 30, height: 30))
//        paddingView.addSubview(imageView)
//        textField.leftView = paddingView
//    }
//
//    func setupViews() {
//    self.view.addSubview(txtFieldSearch)
//    txtFieldSearch.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive=true
//    txtFieldSearch.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive=true
//    txtFieldSearch.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive=true
//    txtFieldSearch.heightAnchor.constraint(equalToConstant: 35).isActive=true
//    setupTextField(textField: txtFieldSearch, img: #imageLiteral(resourceName: "floresCafeEProsa04"))
//
//    let restaurantePreviewView: RestaurantePreviewView?
//    restaurantePreviewView = RestaurantePreviewView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 190))
//
//    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

