//
//  AppDelegate.swift
//  PanModal
//
//  Created by Stephen Sowole on 10/9/18.
//  Copyright © 2018 PanModal. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let tabBarController = UITabBarController()
        
        let firstSampleVC = SampleViewController()
        
        let firstNavigationController = UINavigationController(rootViewController: firstSampleVC)
        
        firstNavigationController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        let secondSampleVC = UIViewController()
        
        let secondNavigationController = UINavigationController(rootViewController: secondSampleVC)
        
        secondNavigationController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 2)
        
        tabBarController.viewControllers = [
            firstNavigationController,
            secondNavigationController,
        ]
        
        window?.rootViewController = tabBarController
        
        window?.makeKeyAndVisible()
        return true
    }
}
