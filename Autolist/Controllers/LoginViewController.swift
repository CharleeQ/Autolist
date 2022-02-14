//
//  ViewController.swift
//  Autolist
//
//  Created by Кирилл Какареко on 13.02.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    private var loginTextField = TextField(title: "Login")
    private var passwordTextField = TextField(title: "Password")
    private var signInButton = ActionButton(title: "Log in")

    override func viewDidLoad() {
        super.viewDidLoad()
        configVC()
        addSubviews()
        setConstrains()
    }
    
    private func configVC() {
        view.backgroundColor = .systemBackground
        passwordTextField.isSecureTextEntry = true
    }
    
    private func addSubviews() {
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        view.addSubview(signInButton)
    }
    
    private func setConstrains() {
        loginTextField.heightAnchor.constraint(equalToConstant: 44).isActive = true
        loginTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        loginTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
        loginTextField.centerYAnchor.constraint(equalTo: passwordTextField.centerYAnchor, constant: -52).isActive = true
        
        passwordTextField.heightAnchor.constraint(equalToConstant: 44).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
        passwordTextField.centerYAnchor.constraint(equalTo: signInButton.centerYAnchor, constant: -52).isActive = true
        
        signInButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        signInButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        signInButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
        signInButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
}

