//
//  ViewController.swift
//  loginApp
//
//  Created by Bogdan Baskakov on 06/08/2019.
//  Copyright © 2019 Bogdan Baskakov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setShadow(loginTextField)
        setShadow(passwordTextField)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! MainViewController
        destinationVC.userName = loginTextField.text ?? "User"
    }
    
    // MARK: - IBActions
    @IBAction func continuePressed() {
        checkLoginAndPassword()
    }
    
    @IBAction func forgotLoginButtonPressed() {
        showAlert(title: "Forgot a Login?",
                  message: "You can try this login - Alexey")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(title: "Forgot a Password?",
                  message: "You can try this password - 2019")
    }
    
    // MARK: - Private Methods
    private func checkLoginAndPassword() {
        if !(loginTextField.text == "Alexey" &&
            passwordTextField.text == "2019") {
            
            showAlert(title: "Please Try Again",
                      message: "Login or Password is Incorrect.")
        } else {
            performSegue(withIdentifier: "showMainVC", sender: nil)
        }
    }
}

extension ViewController {
    private func setShadow(_ view: UIView) {
        view.layer.masksToBounds = false
        view.layer.shadowRadius = 1.0
        view.layer.shadowColor = UIColor.gray.cgColor
        view.layer.shadowOffset = CGSize(width: 1.0,
                                         height: 1.0)
        view.layer.shadowOpacity = 0.8
    }
}

extension ViewController {
    private func showAlert(title: String,
                           message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK",
                                     style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
