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
    private var forgotPasswordLabel = UILabel()
    private var stackView: UIStackView!
    private var signUpLabel = SignUpLabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configVC()
        configStackView()
        setViewsConstraints()
    }
    
    private func configVC() {
        view.backgroundColor = .systemBackground
        
        passwordTextField.isSecureTextEntry = true
        
        forgotPasswordLabel.text = "Forgot password?"
        forgotPasswordLabel.textAlignment = .right
        forgotPasswordLabel.font = UIFont(name: "Rubik-Regular", size: UIFont.labelFontSize)
        forgotPasswordLabel.textColor = .secondaryLabel
        
        view.addSubview(signUpLabel)
    }
    
    private func configStackView() {
        stackView = UIStackView(arrangedSubviews: [loginTextField,
                                                       passwordTextField,
                                                       signInButton,
                                                       forgotPasswordLabel])
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
    }
    
    private func setViewsConstraints() {
        NSLayoutConstraint.activate([
            signInButton.heightAnchor.constraint(equalToConstant: 50),
            loginTextField.heightAnchor.constraint(equalToConstant: 44),
            passwordTextField.heightAnchor.constraint(equalToConstant: 44),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            signUpLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            signUpLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            signUpLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
}

