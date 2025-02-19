//
//  Resources.swift
//  Cicerone
//
//  Created by Мария Кочетова on 20.12.2024.
//

import UIKit

enum Resources {
    enum Colors {
        static var active = UIColor.systemBrown
        static var inactive = UIColor.brown
        
        static var background = UIColor(red: 250/255, green: 239/255, blue: 222/255, alpha: 1.0)
        static var separator = UIColor(red: 215/255, green: 194/255, blue: 156/255, alpha: 0.8)
        
        static var titleGray =  CGColor(red: 89/255, green: 83/255, blue: 83/255, alpha: 1.0)
    }
    
    enum Strings {
        enum TabBar {
            static var main = "Главная"
            static var exhibit = "Экспонаты"
            static var schedule = "Расписание"
            static var settings = "Настройки"
        }
        
    }
    
    enum Images {
        enum TabBar {
            static var main = UIImage(named: "main_tab")
            static var exhibit = UIImage(named: "exhibit_tab")
            static var schedule = UIImage(named: "schedule_tab")
            static var settings = UIImage(named: "settings_tab")
        }
    }
    
    enum Fonts {
        static func helvelticaRegular (with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}
