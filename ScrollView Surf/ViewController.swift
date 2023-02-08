//
//  ViewController.swift
//  ScrollView Surf
//
//  Created by Dmitry Samusenko on 08.02.2023.
//

import UIKit
struct Program {
    var titleOfProgram: String
}

class ViewController: UIViewController {
    @IBOutlet private var scrollView: UIScrollView!
    @IBOutlet weak var eduProgCV: UICollectionView!
    let programs: [Program] = [
        Program(titleOfProgram: "iOS"),
        Program(titleOfProgram: "Android"),
        Program(titleOfProgram: "Flutter"),
        Program(titleOfProgram: "Design"),
        Program(titleOfProgram: "Business"),
        Program(titleOfProgram: "iOS"),
        Program(titleOfProgram: "Android"),
        Program(titleOfProgram: "Flutter"),
        Program(titleOfProgram: "Design")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fixScrollViewBag()
        registerNibs()
    }

    private func registerNibs() {
           eduProgCV.register(UINib(nibName: EduProgCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: EduProgCollectionViewCell.identifier)
       }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return programs.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EduProgCollectionViewCell.identifier, for: indexPath) as! EduProgCollectionViewCell
        //cell.backgroundColor = .red
        return cell
    }
    
    
    private func fixScrollViewBag() {
        if let top = UIApplication.shared.windows.first?.safeAreaInsets.top {
            scrollView.contentInset.top = -top
        }
        if let bottom = UIApplication.shared.windows.first?.safeAreaInsets.bottom {
            scrollView.contentInset.bottom = -bottom
        }
    }
}
