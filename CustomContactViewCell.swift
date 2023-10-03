//
//  CustomGruopViewCell.swift
//  NewApp_GB
//
//  Created by Павел Пашков on 23.09.2023.
//

import UIKit

final class CustomContactViewCell: UITableViewCell {
    private var circle = UIImageView(image: UIImage(systemName: "person"))
    
    private var customTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Фамилия Имя"
        label.textColor = .black
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        addSubview(circle)
        addSubview(customTextLabel)
        
    
        circle.translatesAutoresizingMaskIntoConstraints = false
        customTextLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
    
            circle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            circle.centerYAnchor.constraint(equalTo: centerYAnchor),
            circle.widthAnchor.constraint(equalToConstant: 30),
            circle.heightAnchor.constraint(equalToConstant: 30),

            customTextLabel.leadingAnchor.constraint(equalTo: circle.trailingAnchor, constant: 16),
            customTextLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            customTextLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
// Some Code

