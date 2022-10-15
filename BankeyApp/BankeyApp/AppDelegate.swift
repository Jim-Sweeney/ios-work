//
//  AppDelegate.swift
//  BankeyApp
//
//  Created by Jim Sweeney on 9/26/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var hasOnboarded = false
    
    let loginViewController = LoginViewController()
    let onboardingContainerViewController = OnboardingContainerViewController()
    let dummyViewController = DummyViewController()
        
        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
            
            window = UIWindow(frame: UIScreen.main.bounds)
            window?.makeKeyAndVisible()
            window?.backgroundColor = .systemBackground
            loginViewController.delegate = self
            onboardingContainerViewController.delegate = self
            //window?.rootViewController = onboardingContainerViewController
            dummyViewController.logoutDelegate = self
            window?.rootViewController = loginViewController
            
            return true
        }
    
}
extension AppDelegate {
    func setRootViewContoller(_ vc: UIViewController, animated: Bool = true) {
        guard animated, let window = self.window else {
            self.window?.rootViewController = vc
            self.window?.makeKeyAndVisible()
            return
        }
        
        window.rootViewController = vc
        window.makeKeyAndVisible()
        UIView.transition(with: window, duration: 0.3, options: .transitionCrossDissolve, animations: nil, completion: nil)
    }
}

extension AppDelegate: LoginViewControllerDelegate {
    func didLogin() {
            if hasOnboarded {
                setRootViewContoller(dummyViewController)
            } else {
                setRootViewContoller(onboardingContainerViewController)
            }
        }
    
}

extension AppDelegate: OnboardingContainerViewControllerDelegate {
    func didFinishOnboarding() {
        hasOnboarded = true
        setRootViewContoller(dummyViewController)
    }
}

extension AppDelegate: LogoutDelegate {
    func didLogout() {
        setRootViewContoller(loginViewController)
    }
}
