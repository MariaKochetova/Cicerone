//
//  MainController.swift
//  Cicerone
//
//  Created by Мария Кочетова on 09.02.2025.
//

import UIKit

class MainController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      //  title = "Главная"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.main
    }
}
