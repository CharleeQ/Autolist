//
//  ViewController.swift
//  Autolist
//
//  Created by Кирилл Какареко on 13.02.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - UI elements
    
    private var loginTextField = TextField(title: "Login")
    private var passwordTextField: TextField = {
        let tf = TextField(title: "Password")
        tf.isSecureTextEntry = true
        
        return tf
    }()
    private var signInButton = ActionButton(title: "Log in")
    private var forgotPasswordLabel: UILabel = {
        let label = UILabel()
        
        label.text = "Forgot password?"
        label.textAlignment = .right
        label.textColor = .secondaryLabel
        
        return label
    }()
    private var stackView: UIStackView!
    private var signUpLabel = SignUpLabel()
    private var headLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome!"
        label.font = .boldSystemFont(ofSize: UIFont.preferredFont(forTextStyle: .largeTitle, compatibleWith: .current).pointSize)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    private var subheadLabel: UILabel = {
        let label = UILabel()
        label.text = "Please, sign in with login."
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    // MARK: - viewDidLoad()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configVC()
        addSubviews()
        setViewsConstraints()
    }
    
    // MARK: - Configuration UI methods
    
    private func configVC() {
        view.backgroundColor = .systemBackground
        hideKeyboardWhenTappedAround()
        configStackView()
    }
    
    private func addSubviews() {
        view.addSubview(signUpLabel)
        view.addSubview(headLabel)
        view.addSubview(subheadLabel)
        view.addSubview(stackView)
    }
    
    private func configStackView() {
        stackView = UIStackView(arrangedSubviews: [
            loginTextField,
            passwordTextField,
            signInButton,
            forgotPasswordLabel
        ])
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 16
        stackView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setViewsConstraints() {
        NSLayoutConstraint.activate([
            signInButton.heightAnchor.constraint(equalToConstant: 50),
            loginTextField.heightAnchor.constraint(equalToConstant: 44),
            passwordTextField.heightAnchor.constraint(equalToConstant: 44),
            
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            stackView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            
            signUpLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            signUpLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            signUpLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            
            headLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            headLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            headLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            
            subheadLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 16),
            subheadLabel.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -16),
            subheadLabel.topAnchor.constraint(equalTo: headLabel.bottomAnchor, constant: 8)
        ])
    }
}

