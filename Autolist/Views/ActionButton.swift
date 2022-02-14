//
//  ActionButton.swift
//  Autolist
//
//  Created by Кирилл Какареко on 13.02.2022.
//

import UIKit

class ActionButton: UIButton {
    
    init(title: String) {
        super.init(frame: UIScreen.main.bounds);
        setup(title: title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup(title: String) {
        let customFont = UIFont(name: "Rubik-Medium", size: UIFont.buttonFontSize)
        
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(named: "AccentColor")
        setTitle(title, for: .normal)
        titleLabel?.font = customFont
        setTitleColor(.white, for: .normal)
        layer.cornerRadius = 4.0
    }

}
