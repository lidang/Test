//
//  AppDelegate.swift
//  UITabBarTest
//
//  Created by lidang on 2018/3/26.
//  Copyright © 2018年 lidang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let firstViewController = FirstViewController()
        let secondViewController = SecondViewController()
        let thirdViewController = ThirdViewController()
        
        let tabViewController = UITabBarController()
        tabViewController.viewControllers = [firstViewController, secondViewController, thirdViewController]
        tabViewController.tabBar.barTintColor = UIColor.black
        //tabViewController.tabBar.backgroundColor = UIColor.black  //4.0中不起作用了
        
        let screenWidth = UIScreen.main.bounds.width
        tabViewController.tabBar.frame = CGRect(x: 0, y: 0, width: screenWidth, height: 44) //4.0无用了
        
        tabViewController.tabBar.items![0].image = UIImage(named: "Tab1")
        tabViewController.tabBar.items![0].title = "item1"
        
        tabViewController.tabBar.items![1].image = UIImage(named: "Tab2")
        tabViewController.tabBar.items![1].title = "item2"
        
        tabViewController.tabBar.items![2].image = UIImage(named: "Tab3")
        tabViewController.tabBar.items![2].title = "item3"
         //let item = tabBar.items![0]
         //item.image = UIImage(named: "Tab1")
        // item.title = "item1"
        
         
        /* let item2 = tabBar.items![1]
         item2.image = UIImage(named: "Tab2")
         item2.title = "item2"
         item2.badgeValue = "8"
         
         let item3 = tabBar.items![2]
         item3.image = UIImage(named: "Tab3")
        item3.title = "item3"
 */
        
        self.window?.rootViewController = tabViewController
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

