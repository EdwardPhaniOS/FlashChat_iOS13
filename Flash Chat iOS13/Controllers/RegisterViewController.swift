//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Tan Vinh Phan on 11/11/19.
//  Copyright © 2019 Edward Phan. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e.localizedDescription)
                } else {
                    //Navigate
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
            
        }
        
        
        
    }
    
}
