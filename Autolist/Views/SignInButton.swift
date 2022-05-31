//
//  SignInButton.swift
//  Autolist
//
//  Created by Кирилл Какареко on 14.02.2022.
//

import UIKit

enum TypeOfSign {
    case apple, google
}

class SignInButton: UIButton {

    init(type: TypeOfSign) {
        super.init(frame: UIScreen.main.bounds);
        setup(type)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup(_ type: TypeOfSign) {
        configuration = .gray()
        
        switch type {
        case .apple:
            setImage(UIImage(named: "apple-logo"), for: .normal)
        case .google:
            setImage(UIImage(named: "google-logo"), for: .normal)
        }
    }
}
