//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!

    @IBAction func registerBtnPressed(_ sender: UIButton) {
        registerUser()
    }
    
    func registerUser(){
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { [weak self] authResult, error in
              guard let strongSelf = self else { return }
                if let e = error {
                    print(e.localizedDescription)
                } else {
                    self!.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
                
            }
        }
    }
}
