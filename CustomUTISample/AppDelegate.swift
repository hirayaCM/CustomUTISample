//
//  AppDelegate.swift
//  CustomUTISample
//
//  Created by Shingo Hiraya on 3/21/17.
//  Copyright © 2017 Shingo Hiraya. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        print("url: ", url)
        
        let ext = url.pathExtension.lowercased()
        print("extension: ", ext)
        
        let tempFilePath = NSURL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent("\(NSUUID().uuidString).\(ext)")
        try! FileManager().copyItem(at: url, to: tempFilePath!)
        
        return true
    }
}

