//
//  TabBarController.swift
//  Navigation
//
//  Created by Aleksandr Derevyanko on 31.03.2023.
//

import UIKit

class TabBarController: UITabBarController {
    
//    init() {
//        super.init(nibName: nil, bundle: nil)
//        setupUILogOutStatus()
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    var feedTabNavigationController: UINavigationController!
    var logInTabNavigationController: UINavigationController!
    var favoritesTabNavigationController: UINavigationController!
    let loginVC = LoginViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        
        loginVC.logInDelegate = MyLoginFactory().makeCheckerService()
//        feedTabNavigationController = UINavigationController.init(rootViewController: FeedViewController())
        logInTabNavigationController = UINavigationController.init(rootViewController: loginVC)
        favoritesTabNavigationController = UINavigationController.init(rootViewController: FavoritesViewController())

        self.viewControllers = [logInTabNavigationController, favoritesTabNavigationController]
        
//        let firstItem = UITabBarItem(title: "Feed",
//                                 image: UIImage(systemName: "newspaper"), tag: 0)
        let secondItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person"), tag: 1)
        let thirdItem = UITabBarItem(title: "Favorites", image: UIImage(systemName: "star"), tag: 1)
        
//        feedTabNavigationController.tabBarItem = firstItem
        logInTabNavigationController.tabBarItem = secondItem
        favoritesTabNavigationController.tabBarItem = thirdItem
        
    }
    
}
