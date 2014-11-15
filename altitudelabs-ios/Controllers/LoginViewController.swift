//
//  LoginViewController.swift
//  altitudelabs-ios
//
//  Created by Joseph Cheung on 15/11/14.
//  Copyright (c) 2014 josephktcheung. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        usernameField.text = ""
        passwordField.text = ""
    }
    
    @IBAction func loginButtonPressed(sender: UIButton) {
        if validateLogin() {
            performSegueWithIdentifier("to details", sender: sender)
        }
    }
    
    func validateLogin() -> Bool {
        let username = usernameField.text
        let password = passwordField.text
        
        let isUsernameAlphabetic = username.validateAlphabeticString()
        if countElements(username) > 7 && countElements(password) > 7 && isUsernameAlphabetic {
            return true
        } else {
            return false
        }
    }
}
