//
//  WelcomeVC.swift
//  FlashChat
//
//  Created by Seschwan on 9/6/19.
//  Copyright © 2019 Seschwan. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {
    
    // Outlets
    @IBOutlet weak var welcomeBGImageView: UIImageView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        styleSetup()
    }


    // MARK: - Styling
    func styleSetup() {
        welcomeBGImageView.alpha = 0.7
    }
    
    
    // MARK: - Actions
    @IBAction func signInBtnPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func registerBtnPressed(_ sender: UIButton) {
        
    }
    
}

