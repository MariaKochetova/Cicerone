//
//  BaseController.swift
//  Cicerone
//
//  Created by Мария Кочетова on 09.02.2025.
//

import UIKit

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
}

@objc extension BaseController {
        
        func addViews() {}
        func layoutViews() {}
        func configure() {
            
            view.backgroundColor = Resources.Colors.background
        }
    }
