//
//  AppDelegate.swift
//  News
//
//  Created by 杨蒙 on 2017/9/6.
//  Copyright © 2017年 hrscy. All rights reserved.
//

import UIKit
import SwiftTheme

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        /// 设置主题颜色
        ThemeManager.setTheme(plistName: UserDefaults.standard.bool(forKey: isNight) ? "night_theme" : "default_theme", path: .mainBundle)
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = MyTabBarController()
        window?.makeKeyAndVisible()
        return true
    }
}

