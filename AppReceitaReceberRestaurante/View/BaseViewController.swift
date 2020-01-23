//
//  BaseViewController.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 05/12/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit
import Lottie

class BaseViewController: UIViewController {

    var animationLoadingView: AnimationView?
        
        override func viewDidLoad() {
            super.viewDidLoad()

            // Do any additional setup after loading the view.
        }
        
        func showLoading() {
            
            self.animationLoadingView = AnimationView()
         
            self.animationLoadingView?.frame = self.view.frame
            self.animationLoadingView?.backgroundColor = .systemBackground
            let loadAnimation = Animation.named("9329-loading")
            animationLoadingView?.animation = loadAnimation
            
            self.view.addSubview(self.animationLoadingView ?? UIView())
            
            
            animationLoadingView?.play()
            
        }
        
        func hiddenLoading() {
            animationLoadingView?.isHidden = true
//            animationLoadingView?.removeFromSuperview()
//            animationLoadingView?.stop()
        }
    }
