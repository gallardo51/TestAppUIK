//
//  TabBarViewController.swift
//  TestAppUIK
//
//  Created by Александр Соболев on 27.05.2024.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        self.tabBar.backgroundColor = UIColor.white
        
        let tabOne = UINavigationController(rootViewController: AboutCompanyViewController())
        let tabOneBarItem = UITabBarItem(title: "О компании", image: UIImage(systemName: "list.clipboard"), selectedImage: UIImage(systemName: "list.clipboard.fill"))
        tabOne.tabBarItem = tabOneBarItem
        
        let tabTwo = UINavigationController(rootViewController: ProductCollectionViewController())
        let tabTwoBarItem = UITabBarItem(title: "Продукты", image: UIImage(systemName: "basket"), selectedImage: UIImage(systemName: "basket.fill"))
        tabTwo.tabBarItem = tabTwoBarItem
        
        self.viewControllers = [tabOne, tabTwo]

    }
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    }
}
