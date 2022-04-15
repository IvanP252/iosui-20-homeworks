//
//  AppDelegate.swift
//  Navigation
//
//  Created by Mac on 14.04.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let feed = FeedViewController()
        let navigationFeed = UINavigationController(rootViewController: feed)
        navigationFeed.tabBarItem.title = "Feed"
        navigationFeed.tabBarItem.image = UIImage(systemName: "text.bubble")
        
        let profile = ProfileViewController()
        let navigationProfile = UINavigationController(rootViewController: profile)
        navigationProfile.tabBarItem.title = "Profile"
        navigationProfile.tabBarItem.image = UIImage(systemName: "person")
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [
            navigationFeed,
            navigationProfile
        ]
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = tabBarController
        self.window?.makeKeyAndVisible()
        
        return true
    }
    
    
}

