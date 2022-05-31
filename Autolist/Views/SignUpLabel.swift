//
//  ForgotPasswordLabel.swift
//  Autolist
//
//  Created by Кирилл Какареко on 14.02.2022.
//

import UIKit

class SignUpLabel: UILabel {
    
    init() {
        super.init(frame: UIScreen.main.bounds)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        textAlignment = .center
        let fontSize: CGFloat = 14
        let textString: NSMutableAttributedString
        let font = UIFont.systemFont(ofSize: fontSize, weight: .light)
        textString = NSMutableAttributedString(string: "Don’t have an account? Sign up.",
                                               attributes: [
                                                .font: font,
                                                .foregroundColor: UIColor.secondaryLabel,
                                                    .kern: 0.5
                                               ])
        let attrbs: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.systemBlue,
            .font: UIFont.systemFont(ofSize: 14, weight: .semibold)
        ]
        textString.addAttributes(attrbs, range: NSRange(location: 23, length: 8))
        attributedText = textString
        isUserInteractionEnabled = true
        translatesAutoresizingMaskIntoConstraints = false
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(showSignUp))
//        self.addGestureRecognizer(tapGesture)
    }
}
