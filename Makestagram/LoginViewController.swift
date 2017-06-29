//
//  LoginViewController.swift
//  Makestagram
//
//  Created by Anika Morris on 6/29/17.
//  Copyright © 2017 Anika Morris. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func loginButtonTapped(_ sender: UIButton) {
        print("login button tapped")
    }

}

