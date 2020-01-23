//
//  RestaurantController.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 24/10/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import Foundation
class RestauranteController {
    
    var restaurante: Restaurante?
    
    func getRestaurantes(completion: @escaping (Bool) -> Void) {
        ApiManager().getRestaurante(location: "Sao Paulo SP") { (restaurant, error) in
            if !error {
                self.restaurante = restaurant
                completion(true)
            } else {
                completion(false)
            }
        }
    }
    
    func devolveBusiness() -> [Business]? {
        return self.restaurante?.businesses
    }
     
}
