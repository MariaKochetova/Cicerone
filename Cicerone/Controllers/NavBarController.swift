//
//  NavBarController.swift
//  Cicerone
//
//  Created by Мария Кочетова on 09.02.2025.
//

import UIKit

final class NavBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
    private func configure() {
        view.backgroundColor = UIColor(red: 222/255, green: 210/255, blue: 193/255, alpha: 1.0)
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resources.Colors.titleGray,
            .font: Resources.Fonts.helvelticaRegular(with: 17)
        ]
        
        navigationBar.addBottomBorder(with: Resources.Colors.separator, height: 1)
    }
}
