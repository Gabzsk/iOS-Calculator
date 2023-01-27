//
//  AppDelegate.swift
//  TesteC
//
//  Created by Gabriel Nobre Modesto on 10/01/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        var viewModel = CalculatorViewModel()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = CalculatorViewController.instantiate(viewModel: viewModel)
        window?.makeKeyAndVisible()
        return true
    }


}

