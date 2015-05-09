//
//  AppDelegate.swift
//  Amit Kalra
//
//  Created by Amit Kalra on 4/14/15.
//  Copyright (c) 2015 Amit Kalra. All rights reserved.
//

import UIKit
import AVFoundation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        func welcome() { 
            
            let filePath = NSBundle.mainBundle().pathForResource("Introduction", ofType: "mp3")
            let fileURL = NSURL(fileURLWithPath: filePath!)
            var soundID:SystemSoundID = 0
            AudioServicesCreateSystemSoundID(fileURL, &soundID)
            AudioServicesPlaySystemSound(soundID)
        }
        
        welcome()
        
        /*Storyboards - Didn't work :(
        
        
        var myViewController = UIViewController()
        
        let mainStoryboardFour: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let mainStoryboardFive: UIStoryboard = UIStoryboard(name: "MainiPhone4", bundle: nil)
        let mainStoryboardSix: UIStoryboard = UIStoryboard(name: "MainiPhone6", bundle: nil)
        let mainStoryboardSixPlus: UIStoryboard = UIStoryboard(name: "MainiPhone6+", bundle: nil)
    
    
        
            
        var bounds: CGRect = UIScreen.mainScreen().bounds
        var screenHeight: NSNumber = bounds.size.height
        var deviceFamily: String
        if screenHeight == 480 {
            deviceFamily = "MainiPhone4.storyboard"
            
            myViewController = mainStoryboardFour.instantiateViewControllerWithIdentifier("ak") as! UIViewController
            
            // Load Storyboard with name: iPhone4
        } else if screenHeight == 667 {
            deviceFamily = "Main.storyboard"
            
            myViewController = mainStoryboardFive.instantiateViewControllerWithIdentifier("swagger") as! UIViewController
            
            // Load Storyboard with name: iPhone5
        } else if screenHeight == 736 {
            deviceFamily = "MainiPhone6.storyboard"
            
            myViewController = mainStoryboardSix.instantiateViewControllerWithIdentifier("swag") as! UIViewController
            
            // Load Storyboard with name: iPad
            
        } else {
            
            deviceFamily = "MainiPhone6+.storyboard"
            
            
            myViewController = mainStoryboardSixPlus.instantiateViewControllerWithIdentifier("swaggy") as! UIViewController
            
        }
            
            self.window?.rootViewController = myViewController
            self.window?.makeKeyAndVisible()
        
        
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.LightContent, animated: true)
*/
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    


}

