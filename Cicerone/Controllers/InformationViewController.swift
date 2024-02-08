//
//  InformationViewController.swift
//  Cicerone
//
//  Created by Мария Кочетова on 07.02.2024.
//

import UIKit


final  class InformationViewController: UIViewController {
    
    //MARK: - Life circle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray5
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavBar()
    }
    
    //MARK: - Setup
    private func setupNavBar() {
        let backButtonItem = UIBarButtonItem(image: UIImage(systemName: "xmark"),
                                             style: .plain,
                                             target: self,
                                             action: #selector(didTapBackButton))
        navigationItem.leftBarButtonItem = backButtonItem
        
        navigationController?.navigationBar.tintColor = .systemPink
        title = "Главная"
        
    }
    
    //MARK: - Actions
    
    @objc
    private func didTapBackButton() {
        dismiss(animated: true)
    }
}
