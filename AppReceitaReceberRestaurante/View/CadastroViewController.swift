//
//  CadastroViewController.swift
//  AppReceitaReceberRestaurante
//
//  Created by Maíra Preto on 20/10/19.
//  Copyright © 2019 Maíra Acioli. All rights reserved.
//

import UIKit

import FirebaseAuth

import Firebase

import FirebaseFirestore

class CadastroViewController: BaseViewController {

   
  
    @IBOutlet weak var nomeTextField: UITextField!
    
    @IBOutlet weak var sobrenomeTextFiled: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var senhaTextField: UITextField!
    
    @IBOutlet weak var cadastroButton: UIButton!
    
    
    @IBOutlet weak var errorLabel: UILabel!
    
    
    @IBOutlet weak var fotoCadastroImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setUpCadastroTextField()
                
        self.nomeTextField.delegate = self
        self.sobrenomeTextFiled.delegate = self
        self.emailTextField.delegate = self
        self.senhaTextField.delegate = self
        
        self.fotoCadastroImageView.image = UIImage(named: "degradeFundo")
    }
    
    
    
    func setUpCadastroTextField() {
        
        errorLabel.alpha = 0
        
        Utilities.styleTextField(nomeTextField)
        Utilities.styleTextField(sobrenomeTextFiled)
        Utilities.styleTextField(emailTextField)
        Utilities.styleTextField(senhaTextField)
        Utilities.styleFilledButton(cadastroButton)
        
        
       
        
        
        
        
        
    }
    
    func validarCadastro() -> String? {
        
        if nomeTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || sobrenomeTextFiled.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || emailTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" || senhaTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            
            return "Por favor, preencha todos os campos."
            
            
        }
        
        //chegar se a senha é segura
        
        let senhaSegura = senhaTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        
        
        if Utilities.validarSenha(senhaSegura) == false {
            //se a senha não for segura
            
            self.senhaTextField.text = "" 
            return "Por favor, digite uma senha mais segura. Contendo ao menos 8 letras, números e caracteres especiais."
            
        }
        return nil
    }
    
    @IBAction func cadastroTapped(_ sender: Any) {
        
        //validar senha

        view.endEditing(true)
        
        let error = validarCadastro()
        
        self.showLoading()

        if error != nil {
            self.hiddenLoading()

            mostrarErro(error!)
        }
        else {
            
            let nome = nomeTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let sobrenome = sobrenomeTextFiled.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let email = emailTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            let senha = senhaTextField.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            

            Auth.auth().createUser(withEmail: email, password: senha) { (result, err) in
                
                self.hiddenLoading()
                
                if err != nil {
                    self.mostrarErro("Erro ao criar usuário")
                    
                }
                else {
                    
                    let db = Firestore.firestore()
                    
                    db.collection("Usuários").addDocument(data: ["nome":nome, "sobrenome":sobrenome, "uid": result!.user.uid]) { (error) in
                        
                        if error != nil {
                            
                            self.mostrarErro("Erro ao salvar os dados")
                        }
                    }
                    
                    
                   
                    
                    self.transicaoParaMenu()
                    
                }
            }
            
            
            
        }
        
        
    }
    
    func mostrarErro(_ message:String) {
        errorLabel.text = message
        errorLabel.alpha = 1
        
    }
    
    func transicaoParaMenu(){
        
        let menuVindoViewController = storyboard?.instantiateViewController(identifier: "MenuViewController") as? MenuViewController
        
        view.window?.rootViewController = menuVindoViewController
        view.window?.makeKeyAndVisible()
    }
    
   
}

extension CadastroViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            
            if textField.isEqual(self.nomeTextField) {
                self.sobrenomeTextFiled.becomeFirstResponder()
            } else {
                if textField.isEqual(self.sobrenomeTextFiled) {
                    self.emailTextField.becomeFirstResponder()
                } else {
                    if textField.isEqual(self.emailTextField) {
                        self.senhaTextField.becomeFirstResponder()
                    } else {
                        self.senhaTextField.resignFirstResponder()
                    }
                }
            }
             return true
        }
       
    }


