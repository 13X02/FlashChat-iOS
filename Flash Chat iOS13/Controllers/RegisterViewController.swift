//
//  RegisterViewController.swift
//  Flash Chat iOS13
//

import UIKit
import FirebaseCore
import FirebaseAuth
class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text , let password = passwordTextfield.text{
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
              print(authResult)
            }
        }
        
    }
    
}
