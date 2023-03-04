//
//  ChoosenCollectionView.swift
//  ScrollView Surf
//
//  Created by Dmitry Samusenko on 12.02.2023.
//

import UIKit
//MARK: – Bottom Collection View:
class ChoosenCollectionView: UICollectionView, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var cells = [ProgramsEducation]()
    
     init() {
         let layout = UICollectionViewFlowLayout()
         layout.scrollDirection = .horizontal
         layout.minimumLineSpacing = 12
         
         super.init(frame: .zero, collectionViewLayout: layout)
         delegate = self
         dataSource = self
         
         register(EduCollectionViewCell.self, forCellWithReuseIdentifier: EduCollectionViewCell.reuseID)
         
         showsVerticalScrollIndicator = false
         showsHorizontalScrollIndicator = false
         allowsMultipleSelection = false
    }

    func setCells(cells: [ProgramsEducation]) {
        self.cells = cells
    }
    func toggleMark(isTrue: Bool) -> Bool {
        if isTrue {
            return false
        } else {
            return true
        }
    }
  
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EduCollectionViewCell.reuseID, for: indexPath) as! EduCollectionViewCell
       
        let mark = cells[indexPath.row].isSelected
        if mark {
            cell.backgroundColor = #colorLiteral(red: 0.1921568513, green: 0.1921568513, blue: 0.1921568513, alpha: 1)
            cell.textLabel.textColor = .white
        } else {
            cell.backgroundColor = #colorLiteral(red: 0.9526873231, green: 0.9534586072, blue: 0.9605297446, alpha: 1)
            cell.textLabel.textColor = .black
        }
        cell.layer.cornerRadius = 12
        cell.textLabel.text = cells[indexPath.row].titleOfProgram
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (cells[indexPath.row].titleOfProgram as NSString).size(withAttributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14.0)])
            return CGSize(width: size.width + 48.0, height: size.height + 24.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        cells[indexPath.row].isSelected.toggle()
        collectionView.reloadData()
    }
    
     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }

}
