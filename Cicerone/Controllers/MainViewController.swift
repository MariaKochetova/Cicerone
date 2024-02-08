//
//  MainViewController.swift
//  Cicerone
//
//  Created by Мария Кочетова on 17.01.2024.
//

import UIKit

final class MainViewController: UIViewController {
    private let titleLabel = UILabel()
    private let button = UIButton()
    //private let image = UIImageView(image: mainscreen)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .init(red: 226, green: 199, blue: 167, alpha: 1.0)
        
        titleLabel.text = "Добро пожаловать!"
        titleLabel.textAlignment = .center
        titleLabel.textColor = .systemBrown
        titleLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 27.0)
        titleLabel.shadowOffset = CGSize(width: 2, height: 2)
        titleLabel.shadowColor = .lightGray
        
        button.backgroundColor = .systemBrown
        button.setTitle("ВХОД", for: .normal)
        button.layer.cornerRadius = 20
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.4
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        // titleLabel.frame = CGRect(x: 100, y: 100, width: 200, height: 200)
        
     //   button.frame = CGRect(x: 100, y: 500, width: 200, height: 50)
        
        view.addSubview(titleLabel)
        view.addSubview(button)
        
        setupConstrains()
    }
    
    private func setupConstrains() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: titleLabel,
                           attribute: .centerX,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .centerX,
                           multiplier: 1,
                           constant: 0).isActive = true
        NSLayoutConstraint(item: titleLabel,
                           attribute: .centerY,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .centerY,
                           multiplier: 1,
                           constant: 0).isActive = true
        NSLayoutConstraint(item: titleLabel,
                           attribute: .leading,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .leading,
                           multiplier: 1,
                           constant: 16).isActive = true
        NSLayoutConstraint(item: titleLabel,
                           attribute: .trailing,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .trailing,
                           multiplier: 1,
                           constant: -16).isActive = true
        
           button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint(item: button,
                           attribute: .height,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .notAnAttribute,
                           multiplier: 1,
                           constant: 42).isActive = true
        
        NSLayoutConstraint(item: button,
                           attribute: .leading,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .leading,
                           multiplier: 1,
                           constant: 22).isActive = true
        
        NSLayoutConstraint(item: button,
                           attribute: .trailing,
                           relatedBy: .equal,
                           toItem: view,
                           attribute: .trailing,
                           multiplier: 1,
                           constant: -22).isActive = true
        
        NSLayoutConstraint(item: button,
                           attribute: .top,
                           relatedBy: .equal,
                           toItem: titleLabel,
                           attribute: .bottom,
                           multiplier: 1,
                           constant: 250).isActive = true
        
    }
    
    @objc
    private func didTapButton() {
        let  informationViewController = InformationViewController()
        
        let navigationController = UINavigationController(rootViewController: informationViewController)
        navigationController.modalPresentationStyle = .fullScreen
        
        self.present(informationViewController, animated: true)
    }
}

