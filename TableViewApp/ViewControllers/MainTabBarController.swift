//
//  MainTabBarController.swift
//  TableViewApp
//
//  Created by Сашок on 28.12.2021.
//

import UIKit

class MainTabBarController: UITabBarController {

    private var persons = Person.getPersonsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for viewController in viewControllers ?? [] {
            let tabController = (viewController as? UINavigationController)?.topViewController
            
            if let plainListController = tabController as? PlainListViewController {
                plainListController.persons = persons
            } else if let sectionedListController = tabController as? SectionedListViewController {
                sectionedListController.persons = persons
            }
        }
    }
}
