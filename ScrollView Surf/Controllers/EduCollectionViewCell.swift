//
//  EduCollectionViewCell.swift
//  ScrollView Surf
//
//  Created by Dmitry Samusenko on 12.02.2023.
//

import UIKit

class EduCollectionViewCell: UICollectionViewCell {
    
    static let reuseID = "EduCollectionViewCell"

    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "Trampampam"
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(textLabel)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        textLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        textLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        textLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
