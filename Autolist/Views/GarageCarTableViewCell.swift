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
        v.translatesAutoresizingMaskIntoConstraints = false
        v.layer.cornerRadius = 4
        
        return v
    }()
    var carNameLabel: UILabel = {
        let l = UILabel()
        l.font = .preferredFont(forTextStyle: .headline, compatibleWith: .current)
        l.translatesAutoresizingMaskIntoConstraints = false
        
        
        return l
    }()
    var numberPlate: UILabel = {
        let l = UILabel()
        l.font = .preferredFont(forTextStyle: .caption1, compatibleWith: .current)
        l.translatesAutoresizingMaskIntoConstraints = false
        
        return l
    }()
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Setup method
    
    private func setup() {
        configCardView()
        addSubview(cardView)
        setCellConstraints()
    }
    
    
    // MARK: - Configuration
    
    private func configCardView() {
        cardView.addSubview(carNameLabel)
        cardView.addSubview(numberPlate)
    }
    
    private func setCellConstraints() {
        NSLayoutConstraint.activate([
            cardView.leftAnchor.constraint(equalTo: leftAnchor, constant: 15),
            cardView.rightAnchor.constraint(equalTo: rightAnchor, constant: 15),
            cardView.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            cardView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 5),
            
            carNameLabel.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 10),
            carNameLabel.leftAnchor.constraint(equalTo: cardView.leftAnchor, constant: 15),
            carNameLabel.rightAnchor.constraint(equalTo: cardView.rightAnchor, constant: 15),
            carNameLabel.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: 5),
//
//            numberPlate.topAnchor.constraint(equalTo: carNameLabel.bottomAnchor, constant: 5),
//            numberPlate.leftAnchor.constraint(equalTo: cardView.leftAnchor, constant: 15),
//            numberPlate.rightAnchor.constraint(equalTo: cardView.rightAnchor, constant: 15),
//            numberPlate.bottomAnchor.constraint(equalTo: cardView.topAnchor, constant: 10)
            
        ])
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
