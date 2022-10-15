//
//  UIViewController+Utils.swift
//  BankeyApp
//
//  Created by Jim Sweeney on 10/15/22.
//

import UIKit

extension UIViewController {
  
    func setStatusBar() {
        let statusBarSize = UIApplication.shared.statusBarFrame.size // deprecated but OK
        let frame = CGRect(origin: .zero, size: statusBarSize)
        let statusbarView = UIView(frame: frame)

        statusbarView.backgroundColor = appColor
        view.addSubview(statusbarView)
    }
    
    // New
//    func setStatusBar() {
//        let navBarAppearance = UINavigationBarAppearance()
//        navBarAppearance.configureWithTransparentBackground() // to hide Navigation Bar Line also
//        navBarAppearance.backgroundColor = appColor
//        UINavigationBar.appearance().standardAppearance = navBarAppearance
//        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
//    }

    
    func setTabBarImage(imageName: String, title: String) {
        let configuration = UIImage.SymbolConfiguration(scale: .large)
        let image = UIImage(systemName: imageName, withConfiguration: configuration)
        tabBarItem = UITabBarItem(title: title, image: image, tag: 0)
    }
}
