//
//  RestaurantePreviewView.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 10/11/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import Foundation
import UIKit

class RestaurantePreviewView: UIView {
    
   
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
        self.clipsToBounds = true
        self.layer.masksToBounds = true
        
        setupViews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setData(nomeRestaurante: String, foto: UIImage, precoRestaurante: String) {
        nomeRestauranteLabel.text = nomeRestaurante
        imageView.image = foto
        precoRestauranteLabel.text = "R$\(precoRestaurante)"
    }
    
    func setupViews() {
        addSubview(containerView)
        containerView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        containerView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        containerView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        containerView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        containerView.addSubview(nomeRestauranteLabel)
        nomeRestauranteLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        nomeRestauranteLabel.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        nomeRestauranteLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        nomeRestauranteLabel.heightAnchor.constraint(equalToConstant: 35).isActive = true
        
        addSubview(imageView)
        imageView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: nomeRestauranteLabel.bottomAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        addSubview(precoRestauranteLabel)
        precoRestauranteLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        precoRestauranteLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        precoRestauranteLabel.widthAnchor.constraint(equalToConstant: 90).isActive = true
        precoRestauranteLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }

//private var restaurante: Business?
    
     
let containerView: UIView = {
    
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
} ()

let imageView: UIImageView = {
    
    let foto = UIImageView (image: #imageLiteral(resourceName: "amorDeOutono08"))
    foto.translatesAutoresizingMaskIntoConstraints = false
    return foto
} ()

let nomeRestauranteLabel: UILabel = {
    
    let label = UILabel()
    label.text = "restaurante.title"
    label.font = UIFont.boldSystemFont(ofSize: 28)
    label.textColor = UIColor.black
    label.backgroundColor = UIColor.white
    label.textAlignment = .center
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()
   
let precoRestauranteLabel: UILabel = {
    let label = UILabel()
    label.text = "restaurante?.price"
    label.font = UIFont.boldSystemFont(ofSize: 32)
    label.textColor = UIColor.white
    label.backgroundColor = UIColor(white: 0.2, alpha: 0.8)
    label.textAlignment = .center
    label.layer.cornerRadius = 5
    label.clipsToBounds = true
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
}()


}



