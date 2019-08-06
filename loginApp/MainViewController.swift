//
//  MainViewController.swift
//  loginApp
//
//  Created by Bogdan Baskakov on 06/08/2019.
//  Copyright © 2019 Bogdan Baskakov. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var userWelcomeLabel: UILabel!

    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let personalWelcome = "Welcome, \(userName)"
        userWelcomeLabel.text = personalWelcome
    }
    
    @IBAction func goBackButton() {
        dismiss(animated: true)
    }
    
}
