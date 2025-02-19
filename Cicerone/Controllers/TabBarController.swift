//
//  TabBarController.swift
//  Cicerone
//
//  Created by Мария Кочетова on 20.12.2024.
//

import UIKit

enum Tabs: Int {
    case main
    case exhibit
    case schedule
    case settings
}


final class TabBarController: UITabBarController {
    
    /* override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
     super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
     
     configure()
     }
     
     
     
     required init?(coder: NSCoder) {
     fatalError("init(coder:) has not been implemented")
     }
     
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
        private func configure() {
            tabBar.tintColor = Resources.Colors.active
            tabBar.barTintColor = Resources.Colors.inactive
            tabBar.backgroundColor = UIColor(red: 222/255, green: 210/255, blue: 193/255, alpha: 1.0)
            
            tabBar.layer.borderColor = Resources.Colors.separator.cgColor
            tabBar.layer.borderWidth = 1
            tabBar.layer.masksToBounds = true
            
            let mainController = MainController()
            let exhibitController = ExhibitController()
            let scheduleController = ScheduleController()
            let settingsController = SettingsController()
            
            let mainNavigation = NavBarController(rootViewController: mainController)
            let exhibitNavigation = NavBarController(rootViewController: exhibitController)
            let scheduleNavigation = NavBarController(rootViewController: scheduleController)
            let settingsNavigation = NavBarController(rootViewController: settingsController)
            
            mainNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.main,
                                                     image: Resources.Images.TabBar.main,
                                                     tag: Tabs.main.rawValue)
            
            exhibitNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.exhibit,
                                                        image: Resources.Images.TabBar.exhibit,
                                                        tag: Tabs.exhibit.rawValue)
            
            scheduleNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.schedule,
                                                         image: Resources.Images.TabBar.schedule,
                                                         tag: Tabs.schedule.rawValue)
            
            settingsNavigation.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.settings,
                                                         image: Resources.Images.TabBar.settings,
                                                         tag: Tabs.settings.rawValue)
            
            setViewControllers([
                mainNavigation,
                exhibitNavigation,
                scheduleNavigation,
                settingsNavigation
            ], animated: false)
        }
    }
    

