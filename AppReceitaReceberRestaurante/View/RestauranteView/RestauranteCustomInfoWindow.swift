//
//  CustomInfoWindow.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 28/11/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit
import Foundation

import SDWebImage


protocol RestauranteCustomInfoWindowDelegate: class {

    func clicouNoBotao(value: Business?)
}


class RestauranteCustomInfoWindow: UIView {

    weak var delegate: RestauranteCustomInfoWindowDelegate?
    
    
    @IBOutlet weak var fotoPinPersonalizacaoImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var categoriesLabel: UILabel!
    
    var view : UIView!
    
    var restauranteController: RestauranteController? = RestauranteController()
    
    var modelRestaurante: Business?
    
    
    
    @IBAction func informacoesButton(_ sender: UIButton) -> Void {
       
        self.delegate?.clicouNoBotao(value: modelRestaurante)
        

    }
   
    
    func setUpRestauranteWindow(value: Business?) {
        
        if let _value = value {
            modelRestaurante = value
            
            nameLabel.text = _value.name
            if  _value.isClosed ?? true {
                       categoriesLabel.text = "Fechado"
                      }else{
                       categoriesLabel.text = "Aberto"
                       
                   
                       }
            fotoPinPersonalizacaoImageView.sd_setImage(with: URL(string: _value.imageURL!), placeholderImage: UIImage(named: "degradeFundo"))
            
            nameLabel.textColor = .label
            categoriesLabel.textColor = .label
            
           
          
               
        }
 
    }

    
    func loadView() -> RestauranteCustomInfoWindow{
       
        let restauranteCustomInfoWindow = Bundle.main.loadNibNamed("RestauranteCustomInfoWindow", owner: self, options: nil)?[0] as! RestauranteCustomInfoWindow
        
        
     return restauranteCustomInfoWindow
        
    }

}


