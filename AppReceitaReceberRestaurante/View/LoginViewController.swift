//
//  LoginViewController.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 20/10/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit

import FirebaseAuth



class LoginViewController: BaseViewController {
    
    
    
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var senhaTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var degradeFundoImageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpLoginTextField()
        
        self.hiddenLoading()
        
        self.emailTextField.text = "maira@teste.com"
        self.senhaTextField.text = "maira1234@"
        
        self.degradeFundoImageView.image = UIImage(named: "degradeFundo")
    }
    
    
    @IBAction func loginTapped(_ sender: Any) {
        
                self.showLoading()
        
        let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        let senha = senhaTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        Auth.auth().signIn(withEmail: email, password: senha) { (result, error) in
            
         self.hiddenLoading()
            
            if error != nil {
    
                self.errorLabel.text = error!.localizedDescription
                self.errorLabel.alpha = 1
                self.senhaTextField.text = ""
            }
            else{
                
               
                self.hiddenLoading()
                self.goToMenu()
            }
        }
        
    }
    
    func goToMenu() {
        if let menuVC = self.storyboard?.instantiateViewController(identifier: "MenuViewController") as? MenuViewController {
            let nvc = UINavigationController(rootViewController: menuVC)
            nvc.modalPresentationStyle = .fullScreen
            self.present(nvc, animated: true, completion: nil)
        }
    }
    
    func setUpLoginTextField() {
        
        errorLabel.alpha = 0
        
        Utilities.styleTextField(emailTextField)
        
        Utilities.styleTextField(senhaTextField)
        
        Utilities.styleFilledButton(loginButton)
        
    }
    
    
}

extension LoginViewController: UITextFieldDelegate {
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField.isEqual(self.emailTextField) {
            self.senhaTextField.becomeFirstResponder()
        } else {
            self.senhaTextField.resignFirstResponder()
        }
        return true
    }
}

