//
//  AppDelegate.swift
//  Pattern-Factory
//
//  Created by Neal on 2020/9/8.
//  Copyright © 2020 Neal. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window!.rootViewController = FuritViewController()
        
        return true
    }



}

