//
//  LoginView.swift
//  Autolist
//
//  Created by Кирилл Какареко on 02.03.2022.
//

import UIKit

class LoginView: UIView {
    
    var loginTextField = TextField(title: "Login")
    var passwordTextField: TextField = {
        let tf = TextField(title: "Password")
        tf.isSecureTextEntry = true
        
        return tf
    }()
    var signInButton = ActionButton(title: "Log in")
    var forgotPasswordLabel: UILabel = {
        let label = UILabel()
        label.text = "Forgot password?"
        label.textAlignment = .right
        label.textColor = .secondaryLabel
        
        return label
    }()
    private var stackView: UIStackView!
    var signUpLabel = SignUpLabel()
    private var headLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome!"
        label.font = .boldSystemFont(
            ofSize: UIFont.preferredFont(forTextStyle: .largeTitle, compatibleWith: .current)
                .pointSize
        )
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    private var subheadLabel: UILabel = {
        let label = UILabel()
        label.text = "Please, sign in with login."
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    // MARK: - Inits
    
    init() {
        super.init(frame: UIScreen.main.bounds)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Funcs
    
    private func setup() {
        config()
        addSubviews()
        setViewsConstraints()
    }
    
    private func config() {
        backgroundColor = .systemBackground
        configStackView()
    }
    
    private func addSubviews() {
        addSubview(signUpLabel)
        addSubview(headLabel)
        addSubview(subheadLabel)
        addSubview(stackView)
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
            
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 16),
            stackView.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -16),
            
            signUpLabel.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 16),
            signUpLabel.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -16),
            signUpLabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20),
            
            headLabel.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 16),
            headLabel.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -16),
            headLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
            
            subheadLabel.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor, constant: 16),
            subheadLabel.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor, constant: -16),
            subheadLabel.topAnchor.constraint(equalTo: headLabel.bottomAnchor, constant: 8)
        ])
    }
}
