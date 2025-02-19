//
//  SettingsController.swift
//  Cicerone
//
//  Created by Мария Кочетова on 19.02.2025.
//

import UIKit

class SettingsController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // title = "Настройки"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.settings
    }
    
}
