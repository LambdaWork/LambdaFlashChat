//
//  RegisterVC.swift
//  FlashChat
//
//  Created by Seschwan on 9/6/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

import UIKit
import Firebase

class RegisterVC: UIViewController {
    
    // Outlets
    @IBOutlet weak var registerBGImageView: UIImageView!
    @IBOutlet weak var registerEmailTextField: UITextField!
    @IBOutlet weak var registerPasswordTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        styleSetup()
        
    }
    
    // MARK: - Styling
    func styleSetup() {
        registerBGImageView.alpha = 0.7
    }
    
    // MARK: - Actions
    @IBAction func registerVCBtnPressed(_ sender: UIButton) {
        guard let userName = registerEmailTextField.text, !userName.isEmpty,
            let password = registerPasswordTextField.text, !password.isEmpty else { return }
        
        // Firebase Auth method for creating a new username/password.
        Auth.auth().createUser(withEmail: userName, password: password) { (user, error) in
            
            // Checking to see if there was an error.
            if let error = error {
                NSLog("There was an error with registration: \(error)")
                
                // Create an AlertController to let the user know that the registration failed.
                let alert = UIAlertController(title: "There was a problem registering!", message: "Please try again.", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { (_) in
                }))
                self.present(alert, animated: true, completion: nil)
            }
            
            // TODO: -  Segue to the channels screen.
            //self.performSegue(withIdentifier: <#T##String#>, sender: self)
        }
    }
    
    @IBAction func registerVCCancelBtnPressed(_ sender: UIButton) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToLoginVCSegue" {
            //guard let mainVC = segue.destination as? WelcomeVC else { return }
            dismiss(animated: true) {
            }
        }
    }
    
}
