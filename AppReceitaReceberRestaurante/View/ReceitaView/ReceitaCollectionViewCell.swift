//
//  ReceitaCollectionViewCell.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 04/12/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit

class ReceitaCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var fotoReceita: UIImageView!
    
    @IBOutlet weak var nomeReceitaLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    
        
    }

    func setupReceitaNaCollection(receita: ReceitaModel){

        self.nomeReceitaLabel.text = receita.titulo
        self.nomeReceitaLabel.textColor = .black
        self.nomeReceitaLabel.textColor = .label
        
        self.fotoReceita.image = UIImage(named: receita.fotoReceita)
            
//        self.fotoReceita.layer.cornerRadius = 10
        
            
}
}
