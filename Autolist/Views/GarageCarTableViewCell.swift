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
    private var verticalStackView: UIStackView!
    
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
        setCellConstraints()
    }
    
    
    // MARK: - Configuration
    
    private func configCardView() {
        verticalStackView = UIStackView(arrangedSubviews: [
            carNameLabel,
            numberPlate
        ])
        verticalStackView.axis = .vertical
        verticalStackView.distribution = .fill
        verticalStackView.spacing = 4
        verticalStackView.translatesAutoresizingMaskIntoConstraints = false

        cardView.addSubview(verticalStackView)
        contentView.addSubview(cardView)
    }
    
    private func setCellConstraints() {
        NSLayoutConstraint.activate([
            cardView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            cardView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            cardView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            cardView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
            
            verticalStackView.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 15),
            verticalStackView.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -15),
            verticalStackView.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 15),
            verticalStackView.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -15)
        ])
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
