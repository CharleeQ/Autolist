//
//  TextField.swift
//  Autolist
//
//  Created by Кирилл Какареко on 13.02.2022.
//

import UIKit

class TextField: UITextField {
    
    let padding = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
    
    init(title: String) {
        super.init(frame: UIScreen.main.bounds);
        setup(title)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    private func setup(_ placeholder: String) {
        let customFont = UIFont(name: "Rubik-Regular", size: UIFont.labelFontSize)
        
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .secondarySystemBackground
        self.placeholder = placeholder
        font = customFont
        layer.cornerRadius = 4.0
        
    }
    
}
