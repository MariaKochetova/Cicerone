//
//  ExhibitController.swift
//  Cicerone
//
//  Created by Мария Кочетова on 19.02.2025.
//

import UIKit

class ExhibitController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      //  title = "Экспонаты"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.exhibit
    }
}
