//
//  ScheduleController.swift
//  Cicerone
//
//  Created by Мария Кочетова on 19.02.2025.
//

import UIKit

class ScheduleController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //title = "Расписание"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.schedule
        //navigationController?.title = "Расписани"
        //self.navigationItem.title = "Расписание"
    }
}
