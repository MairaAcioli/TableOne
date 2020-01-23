//
//  ReceberGaleriaViewController.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 13/10/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit

class ReceberGaleriaViewController: UIViewController, UIScrollViewDelegate {


    @IBOutlet weak var galeriaReceberScrollView: UIScrollView!
    
    @IBOutlet weak var receberGaleriaPageControl: UIPageControl!
    
    @IBOutlet weak var tituloReceberLabel: UILabel!
    
    @IBOutlet weak var fonteReceberLabel: UILabel!
    
    @IBOutlet weak var conteudoReceberTextView: UITextView!
    
    
    var fotosReceberArray = [UIImage]()
    var receberModel: GenericData?
    var controller: GenericController = GenericController()
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        galeriaReceberScrollView.delegate = self
        
        let total: Int = receberModel?.fotosArray.count ?? 0 //controller.array.last?.fotosArray.count ?? 0
        for i in 0..<total {

            let imageView = UIImageView()

            imageView.image = UIImage(named: receberModel?.fotosArray[i] ?? "") //controller.array.last?.fotosArray[i] ?? ""

            let posicaoX = (self.view.frame.width - 40 ) * CGFloat(i)

            imageView.frame = CGRect(x: posicaoX, y: -40, width: self.galeriaReceberScrollView.frame.width, height: self.galeriaReceberScrollView.frame.height)

            galeriaReceberScrollView.contentSize.width = galeriaReceberScrollView.frame.width * CGFloat(i + 1)
            galeriaReceberScrollView.addSubview(imageView)
            
            conteudoReceberTextView.isEditable = false
            conteudoReceberTextView.showsVerticalScrollIndicator = false


        }
        
        receberGaleriaPageControl.addTarget(self, action: #selector(self.changePage(sender:)), for: UIControl.Event.valueChanged)
        self.receberGaleriaPageControl.numberOfPages = total
        self.receberGaleriaPageControl.currentPage = 0

  
        self.setUpReceberGaleria()
        
    }
    
    @objc func changePage(sender: AnyObject) -> () {
        let x = CGFloat(receberGaleriaPageControl.currentPage) * galeriaReceberScrollView.frame.size.width
        galeriaReceberScrollView.setContentOffset(CGPoint(x:x, y:0), animated: true)
    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {

        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        receberGaleriaPageControl.currentPage = Int(pageNumber)
    }

    
    func setUpReceberGaleria() {
        
        tituloReceberLabel.text = receberModel?.titulo
        fonteReceberLabel.text = receberModel?.categoria
        conteudoReceberTextView.text = receberModel?.conteudo
    }

    @IBAction func mostrarEmpresasButton(_ sender: Any) {
        
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ReceberEmpresasViewController") as? ReceberEmpresasViewController {
            
            vc.dados = receberModel
            
            self.addChild(vc)
            vc.view.frame = self.view.frame
            self.view.addSubview(vc.view)
            self.didMove(toParent: self)
            
        }
       
        
        
    }
    
    
    
}
