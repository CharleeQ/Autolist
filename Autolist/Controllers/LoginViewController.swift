//
//  ViewController.swift
//  Autolist
//
//  Created by Кирилл Какареко on 13.02.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - UI elements
    
    private var screen = LoginView()
    
    // MARK: - viewDidLoad()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
        view.addSubview(screen)
    }
}

