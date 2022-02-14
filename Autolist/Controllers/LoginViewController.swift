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
    private var appleSIButton = SignInButton(type: .apple)
    private var googleSIButton = SignInButton(type: .google)
    
    override func loadView() {
        super.loadView()
        view.backgroundColor = .systemBackground
        passwordTextField.isSecureTextEntry = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configStackView()
    }
    
    private func configStackView() {
        let insideSV = UIStackView(arrangedSubviews: [appleSIButton, googleSIButton])
        insideSV.axis = .horizontal
        insideSV.distribution = .fillEqually
        insideSV.spacing = 16
        insideSV.translatesAutoresizingMaskIntoConstraints = false
        let stackView = UIStackView(arrangedSubviews: [loginTextField,
                                                       passwordTextField,
                                                       signInButton,
                                                       insideSV])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
        ])
        
    }
}

