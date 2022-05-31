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
        l.numberOfLines = 2
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
    private var horizontalStackView: UIStackView!
    var carImage: UIImageView = {
        let iv = UIImageView(image: UIImage(named: "car"))
        iv.contentMode = .scaleAspectFit
        iv.layer.cornerRadius = 4
        iv.backgroundColor = .systemBackground
        
        return iv
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
        horizontalStackView = UIStackView(arrangedSubviews: [verticalStackView, carImage])
        horizontalStackView.axis = .horizontal
        horizontalStackView.distribution = .fillEqually
        horizontalStackView.spacing = 15
        horizontalStackView.alignment = .leading
        horizontalStackView.translatesAutoresizingMaskIntoConstraints = false

        cardView.addSubview(horizontalStackView)
        contentView.addSubview(cardView)
    }
    
    private func setCellConstraints() {
        NSLayoutConstraint.activate([
            cardView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            cardView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            cardView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            cardView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
            
            horizontalStackView.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 15),
            horizontalStackView.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -15),
            horizontalStackView.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 15),
            horizontalStackView.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -15)
        ])
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
