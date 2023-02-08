//
//  EduProgCollectionViewCell.swift
//  ScrollView Surf
//
//  Created by Dmitry Samusenko on 08.02.2023.
//

import UIKit

class EduProgCollectionViewCell: UICollectionViewCell {
    static let identifier = String(describing: EduProgCollectionViewCell.self)
    @IBOutlet weak var textLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

}
