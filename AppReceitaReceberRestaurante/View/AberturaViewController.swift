//
//  AberturaViewController.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 20/10/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit

import AVKit

class AberturaViewController: UIViewController {
    
    var videoPlayer: AVPlayer?
    
    var videoPlayerLayer: AVPlayerLayer?
    
    @IBOutlet weak var cadastroButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         setUpAbertura()

        if UserDefaults.standard.bool(forKey: "logado") {
            self.goToMenu()
         
        }
        
      
      
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
        
        if !UserDefaults.standard.bool(forKey: "logado"){
            setUpVideo()
        }
    }

    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        videoPlayer?.pause()
        videoPlayerLayer?.removeFromSuperlayer()
        videoPlayer = nil
        self.navigationController?.isNavigationBarHidden = false
    }
    
    func goToMenu() {
        self.videoPlayer?.pause()
        if let menuVC = self.storyboard?.instantiateViewController(identifier: "MenuViewController") as? MenuViewController {
              let nvc = UINavigationController(rootViewController: menuVC)
            nvc.modalPresentationStyle = .fullScreen
            self.present(nvc, animated: false, completion: nil)
        }
    }

    
    func setUpAbertura(){
        
        Utilities.styleFilledButton(cadastroButton)
        Utilities.styleHollowButton(loginButton)
    }
   
    func setUpVideo(){
        
       let bundlePath =  Bundle.main.path(forResource: "videoAbertura", ofType: "mp4")
        
        guard bundlePath != nil else{
            return
        }
        
        let url = URL(fileURLWithPath: bundlePath!)
        
        let item = AVPlayerItem(url: url)
        
        videoPlayer = AVPlayer(playerItem: item)
        
        videoPlayerLayer = AVPlayerLayer(player: videoPlayer!)
        
        videoPlayerLayer?.frame = CGRect(x: -self.view.frame.size.width*1.5, y: 0, width: self.view.frame.size.width*4, height: self.view.frame.size.height)
        view.layer.insertSublayer(videoPlayerLayer!, at: 0)
        
        videoPlayer?.playImmediately(atRate: 0.3)
        
        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: self.videoPlayer?.currentItem, queue: .main) { _ in
            self.videoPlayer?.seek(to: CMTime.zero)
            self.videoPlayer?.play()
        }
        
    }

}
