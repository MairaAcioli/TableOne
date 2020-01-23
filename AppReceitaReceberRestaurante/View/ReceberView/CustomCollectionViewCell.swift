//
//  CustomCollectionViewCell.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 03/12/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var tagLabel: UILabel!
    
//    var genericData: GenericData?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    func setupViewNaCollection(receber: GenericTag){

        self.tagLabel.text = receber.tag

        

        self.tagLabel.textColor = .black
        self.tagLabel.layer.borderWidth = 0.5
        
        self.tagLabel.layer.borderColor = UIColor.label.cgColor
        self.tagLabel.tintColor = UIColor.white
        self.tagLabel.layer.cornerRadius = 5
        
         self.tagLabel.textColor = .label
       
               
    }
    
    
    
}


