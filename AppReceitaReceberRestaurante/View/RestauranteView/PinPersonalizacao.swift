//
//  PinPersonalizacao.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 10/11/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import Foundation
import UIKit




class PinPersonalizacao: UIView {
    
    var foto: UIImage!
    var bordaCor: UIColor!
    
    init(frame: CGRect, foto: UIImage, bordaCor: UIColor, tag: Int) {
        super.init(frame: frame)
        self.foto = foto
        self.bordaCor = bordaCor
        self.tag = tag
        setupView()
    }
    
  
    func setupView() {
        
        let imageView = UIImageView(image: foto)
        imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        imageView.layer.cornerRadius = 25
        imageView.layer.borderColor = bordaCor?.cgColor
        imageView.layer.borderWidth = 4
        imageView.clipsToBounds = true
        
        let label = UILabel(frame: CGRect(x: 0, y: 45, width: 50, height: 10))
        label.text = "▼"
        label.font = UIFont.systemFont(ofSize: 24)
        label.textColor = bordaCor
        label.textAlignment = .center
        
        self.addSubview(imageView)
        self.addSubview(label)
        
    }
    
    required init?(coder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
      }
      
    
}
