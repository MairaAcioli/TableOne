//
//  ReceberViewController.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 13/10/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit
import Foundation

class ReceberViewController: BaseViewController {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var receberTableView: UITableView!
    
    let receberCell = ReceberTableViewCell()
    var receberController: GenericController!
    
    
    var tipo: TipoDado = .receber
    
    var genericData: GenericData?
    
//    var arrayAperitivo = [
//    GenericData(titulo: "Aperitivos e Amigos", fotoPrincipal:  "aperitivosEAmigos", conteudo: "Chamar os melhores amigos e fazer aquela tábua de aperitivos maravilhosa. A Bia Rocha, da Duas Gastronomia preparou uma mesa inédita com frutas, geléia, queijo, bolos e nutas. Queremos mostrar uma tábua de aperitivos que se diferencia por trazer ingredientes práticos e que tem uma apresentação única que une charme com as peças da Cosi Home.", conteudoDetalhes: nil, categoria: "Duas Gastronomia", fotosArray: ["aperitivosEAmigos01", "aperitivosEAmigos02", "aperitivosEAmigos03", "aperitivosEAmigos04","aperitivosEAmigos05", "aperitivosEAmigos06", "aperitivosEAmigos07", "aperitivosEAmigos08", "aperitivosEAmigos09", "aperitivosEAmigos10"], tipoDeDado: .receber, logoEmpresa1: "logoCosi", nomeEmpresa1: "Cosi Home", descricaoEmpresa1: "Objetos de decor genuinos e funcionais", logoEmpresa2: "logoDuas", nomeEmpresa2: "Duas Gastronomia", descricaoEmpresa2: "Festas e eventos com cardápios personalizados e exclusivos", tag: "aperitivo"),
//
//    GenericData(titulo: "Amor de Outono", fotoPrincipal:  "amorDeOutono01", conteudo: "Bolo de Rolo em São Paulo", conteudoDetalhes: nil, categoria: "Ghee Banqueteria", fotosArray: ["amorDeOutono02", "amorDeOutono03", "amorDeOutono04","amorDeOutono05", "amorDeOutono06", "amorDeOutono07", "amorDeOutono08", "amorDeOutono09", "amorDeOutono10", "amorDeOutono11", "amorDeOutono12", "amorDeOutono13", "amorDeOutono14", "amorDeOutono15"], tipoDeDado: .receber, logoEmpresa1: "logoCosi", nomeEmpresa1: "Cosi Home", descricaoEmpresa1: "Objetos de decor genuinos e funcionais", logoEmpresa2: "logoDuas", nomeEmpresa2: "Duas Gastronomia", descricaoEmpresa2: "Festas e eventos com cardápios personalizados e exclusivos", tag: "aperitivo")
//    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        receberController = GenericController(tipo: tipo)
        
        self.receberTableView.register(UINib(nibName: "ReceberTableViewCell", bundle: nil), forCellReuseIdentifier: "ReceberTableViewCell")
        self.receberTableView.delegate = self
        self.receberTableView.dataSource = self
        self.receberTableView.tableFooterView = UIView()
        
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.register(UINib(nibName: "CustomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CustomCollectionViewCell")
//        
//        let uploadData = UpLoadDados()
//        uploadData.downLoad()
//        
        
        
    }
}

extension ReceberViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
       
        return receberController.numberOfRowsInSectionReceber()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        if let receberCell = tableView.dequeueReusableCell(withIdentifier: "ReceberTableViewCell", for: indexPath) as? ReceberTableViewCell{
            
            receberCell.setUpReceber(receber: receberController.devolveReceber(index: indexPath.row))
            
            //            receberCell.layer.borderColor = UIColor.label.cgColor
            
            return receberCell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let vc = storyboard?.instantiateViewController(identifier: "ReceberGaleriaViewController") as? ReceberGaleriaViewController {
            
            vc.receberModel = receberController.devolveReceber(index: indexPath.row)
            navigationController?.pushViewController(vc, animated: true)
            
            
        }
        
    }
    
}

extension ReceberViewController : UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.receberController.genericTag.count
        //return self.arrayCars.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell : CustomCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionViewCell", for: indexPath) as! CustomCollectionViewCell
        
        cell.setupViewNaCollection(receber: receberController.genericTag[indexPath.row])
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.receberController.array = self.receberController.arrayBkp
        if receberController.genericTag[indexPath.row].tag == "Todos" {
            self.receberTableView.reloadData()
        } else {
            self.receberController.filtarArray(receber: receberController.genericTag[indexPath.row].tag)
            self.receberTableView.reloadData()
        }
    }
}
//
//if let vc = storyboard?.instantiateViewController(identifier: "ReceberGaleriaViewController") as? ReceberGaleriaViewController {
//
//          vc.receberModel = receberController.devolveReceber(index: indexPath.row)
//          navigationController?.pushViewController(vc, animated: true)
//

//
//
//
//            receberTableView.reloadData()
//
//        }
//
//
//    }

    
