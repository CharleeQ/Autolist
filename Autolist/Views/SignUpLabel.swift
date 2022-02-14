//
//  ForgotPasswordLabel.swift
//  Autolist
//
//  Created by Кирилл Какареко on 14.02.2022.
//

import UIKit

class SignUpLabel: UILabel {
    
    func setup() {
        let fontSize: CGFloat = 14
        let textString: NSMutableAttributedString
        if let font = UIFont(name: "Rubik-Regular", size: UIFont.smallSystemFontSize) {
            textString = NSMutableAttributedString(string: "Don’t have an account? Sign up.",
                                                   attributes: [.font: font,.foregroundColor: UIColor.secondaryLabel, .kern: 0.5])
        } else {
            textString = NSMutableAttributedString(string: "Don’t have an account? Sign up.",
                                                   attributes: [.font: UIFont.systemFont(ofSize: fontSize, weight: .light),.foregroundColor: UIColor.secondaryLabel, .kern: 0.5])
        }
        let attrbs: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.label,
            .font: UIFont.systemFont(ofSize: fontSize, weight: .semibold)]
        textString.addAttributes(attrbs, range: NSRange(location: 23, length: 8))
        attributedText = textString
        isUserInteractionEnabled = true
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(showSignUp))
//        self.addGestureRecognizer(tapGesture)
    }
}
