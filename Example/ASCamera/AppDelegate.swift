//
//  AppDelegate.swift
//  ASwiftyCamera
//
//  Created by Angel on 09/01/2023.
//  Copyright (c) 2023 Angel. All rights reserved.
//

import UIKit
import AVFoundation
import ASCamera

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.setAppAudioSettings()
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let mainController = ViewController()
        self.window?.rootViewController = mainController
        self.window?.makeKeyAndVisible()
        return true
    }
    public func setAppAudioSettings(){
        let audioSession = AVAudioSession.sharedInstance()
        do {
            let options: AVAudioSession.CategoryOptions = [
                .mixWithOthers//, .allowBluetooth, .allowBluetoothA2DP, .allowAirPlay
            ]
            
            try audioSession.setCategory(
                AVAudioSession.Category.playback,
                mode: AVAudioSession.Mode.default, options: options)
            try audioSession.setActive(true)
        } catch {
            print(error)
            print("Failed to set background audio preference \(error.localizedDescription)")
        }
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}

