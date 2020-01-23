//
//  ReceitaViewController.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 04/12/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit

class ReceitaViewController: BaseViewController {
    
    @IBOutlet weak var receitaCollectionView: UICollectionView!
    
    
    var receberController: GenericData!
    
    var receitaController: ReceitaController = ReceitaController()

    override func viewDidLoad() {
        super.viewDidLoad()
        

        self.receitaCollectionView.delegate = self
        self.receitaCollectionView.dataSource = self
        self.receitaCollectionView.register(UINib(nibName: "ReceitaCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ReceitaCollectionViewCell")
     
        
        self.receitaController.pegarDados { (sucess) in
            if sucess {
                self.receitaCollectionView.reloadData()
            }
        }
        
        print("ViewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }

}

extension ReceitaViewController : UICollectionViewDataSource, UICollectionViewDelegate {

 func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     
    return self.receitaController.numberOfRowsInSectionReceita()
    
    
     
 }
 
 func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
     
    
    if let receitacvc = collectionView.dequeueReusableCell(withReuseIdentifier: "ReceitaCollectionViewCell", for: indexPath) as? ReceitaCollectionViewCell {
        
        receitacvc.setupReceitaNaCollection(receita: receitaController.devolveReceita(index: indexPath.row))
        receitacvc.layer.borderColor = UIColor.label.cgColor
        receitacvc.layer.borderWidth = 0.5
        receitacvc.layer.cornerRadius = 10
        
     return receitacvc
        
 }
    
return UICollectionViewCell()
 
}
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if let vc = storyboard?.instantiateViewController(identifier: "ReceitaModoDePreparoViewController") as? ReceitaModoDePreparoViewController {
            
            vc.receitaModel = receitaController.devolveReceita(index: indexPath.row)
           
          navigationController?.pushViewController(vc, animated: true)
                   
                   
               }
        
        
    }
  
}


//vc.receberModel = receberController.devolveReceber(index: indexPath.row)
//           navigationController?.pushViewController(vc, animated: true)
