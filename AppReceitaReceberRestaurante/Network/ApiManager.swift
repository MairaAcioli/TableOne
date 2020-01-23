//
//  ApiMenager.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 24/10/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import Foundation

import Alamofire

struct ApiManager {
    
    
    func getRestaurante(location: String, completion: @escaping (_ result: Restaurante?, _ error: Bool) -> Void) {
        let parameters: [String:Any] = ["location":location, "categories":"restaurants"]
        let url = API.baseURL + API.businesses + API.search
        let header: HTTPHeaders = ["Authorization":API.apiKey]
        Alamofire.request(url, method: .get, parameters: parameters, headers: header).responseJSON { (response) in
            if response.response?.statusCode == 200 {
                guard let data = response.data else {
                    completion(nil,true)
                    return
                }
                do {
                    let result = try JSONDecoder().decode( Restaurante.self, from: data)
                    completion(result, false)
                    return
                }catch {
                    completion(nil,true)
                }
            }
            completion(nil,true)
        }
    }
}
            
