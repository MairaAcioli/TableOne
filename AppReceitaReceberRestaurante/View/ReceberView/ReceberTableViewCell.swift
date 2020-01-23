//
//  ReceberTableViewCell.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 13/10/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit

class ReceberTableViewCell: UITableViewCell {

   
    @IBOutlet weak var receberImageView: UIImageView!
    
    @IBOutlet weak var tituloReceberLabel: UILabel!
    
    @IBOutlet weak var fonteReceberLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUpReceber(receber: GenericData){
        receberImageView.image = UIImage(named: receber.fotoPrincipal)
        tituloReceberLabel.text = receber.titulo
        fonteReceberLabel.text = receber.categoria
        
    }
    
}
