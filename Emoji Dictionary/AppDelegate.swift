//
//  AppDelegate.swift
//  Emoji Dictionary
//
//  Created by Scott moon on 16/12/2017.
//  Copyright © 2017 Scott moon. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var navigationController : UINavigationController!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        navigationController = UINavigationController(rootViewController: EmojiListViewController())
        
        window?.rootViewController = navigationController
        
        window?.makeKeyAndVisible()
        return true
    }
}

