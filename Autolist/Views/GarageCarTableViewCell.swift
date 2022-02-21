//
//  GarageCarTableViewCell.swift
//  Autolist
//
//  Created by Кирилл Какареко on 19.02.2022.
//

import UIKit

class GarageCarTableViewCell: UITableViewCell {
    
    // MARK: - Views
    
    private var cardView: UIView = {
        let v = UIView()
        v.backgroundColor = .secondarySystemBackground
        v.layer.cornerRadius = 4
        v.translatesAutoresizingMaskIntoConstraints = false
        
        return v
    }()
    var carNameLabel: UILabel = {
        let l = UILabel()
        l.font = UIFont(name: "Rubik-Bold", size: UIFont.buttonFontSize)
        
        return l
    }()
    var numberPlate: UILabel = {
        let l = UILabel()
        l.font = UIFont(name: "Rubik-Regular", size: UIFont.labelFontSize)
        
        return l
    }()
    private var stackView: UIStackView!
    
    // MARK: - Init
    
    init() {
        super.init(style: .default, reuseIdentifier: "garageCarCell")
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup method
    
    private func setup() {
        addSubview(cardView)
        configStackView()
        setCellConstraints()
    }
    
    // MARK: - Configuration
    
    private func configStackView() {
        stackView = UIStackView(arrangedSubviews: [
            carNameLabel,
            numberPlate
        ])
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.spacing = 4
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        cardView.addSubview(stackView)
    }
    
    private func setCellConstraints() {
        NSLayoutConstraint.activate([
            cardView.leftAnchor.constraint(equalTo: leftAnchor, constant: 15),
            cardView.rightAnchor.constraint(equalTo: rightAnchor, constant: 15),
            cardView.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            cardView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 5),
            
            
            stackView.leftAnchor.constraint(equalTo: cardView.leftAnchor, constant: 15),
            stackView.rightAnchor.constraint(equalTo: cardView.rightAnchor, constant: 15),
            stackView.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 10),
            stackView.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: 10)
        ])
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
