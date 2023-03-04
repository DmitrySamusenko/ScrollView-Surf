//
//  ViewController.swift
//  ScrollView Surf
//
//  Created by Dmitry Samusenko on 08.02.2023.
//

import UIKit
//MARK: – Main View Controller:
class ViewController: UIViewController {
    //MARK: – Outlets:
    @IBOutlet private var scrollView: UIScrollView!
    @IBOutlet private var testStack: UIStackView!
    @IBOutlet private var secondTestStack: UIStackView!
    
    let eduCollectionView = EduCollectionView()
    let choosenCollectionView = ChoosenCollectionView()
    //MARK: – Properties:
    let newButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = #colorLiteral(red: 0.1921568513, green: 0.1921568513, blue: 0.1921568513, alpha: 1)
        button.setTitle("Отправить заявку", for: .normal)
        button.layer.cornerRadius = 26
        button.addTarget(self, action: #selector(pressed), for: .touchUpInside)
        button.setTitleColor(UIColor.init(white: 1, alpha: 0.3), for: .highlighted)
        return button
    }()
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .lightGray
        label.font = .systemFont(ofSize: 14)
        label.text = "Хочешь к нам?"
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fixScrollViewBag()
        confUI()
    }
}
    
    extension ViewController {
        
        //MARK: – Helper functions
        private func fixScrollViewBag() {
            if let top = UIApplication.shared.windows.first?.safeAreaInsets.top {
                scrollView.contentInset.top = -top
            }
            if let bottom = UIApplication.shared.windows.first?.safeAreaInsets.bottom {
                scrollView.contentInset.bottom = -bottom
            }
        }
        
        @objc private func pressed() {
            let alertController = UIAlertController(title: "Поздравляем!", message: "Ваша заявка успешно отправлена!", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Закрыть", style: .cancel)
            alertController.addAction(alertAction)
            present(alertController, animated: true)
        }
        //MARK: – Configure UI Funcion:
        private func confUI() {
            view.addSubview(newButton)
            view.addSubview(textLabel)
            textLabel.translatesAutoresizingMaskIntoConstraints = false
            newButton.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate( [
                newButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                newButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -58),
                newButton.heightAnchor.constraint(equalToConstant: 60),
                newButton.widthAnchor.constraint(equalToConstant: 219),
                
                textLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                textLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -78)
            ])
            
            
            testStack.insertArrangedSubview(eduCollectionView, at: 2)
            NSLayoutConstraint.activate([
                eduCollectionView.heightAnchor.constraint(equalToConstant: 60),
                eduCollectionView.widthAnchor.constraint(equalTo: testStack.widthAnchor)
            ])
            eduCollectionView.setCells(cells: ProgramsEducation.getPrograms())
            eduCollectionView.allowsMultipleSelection = false
            
            secondTestStack.insertArrangedSubview(choosenCollectionView, at: 1)
            NSLayoutConstraint.activate([
                choosenCollectionView.heightAnchor.constraint(equalToConstant: 94),
                choosenCollectionView.widthAnchor.constraint(equalTo: secondTestStack.widthAnchor)
            ])
            choosenCollectionView.setCells(cells: ProgramsEducation.getFakePrograms())
            choosenCollectionView.allowsMultipleSelection = false
        }
    }

