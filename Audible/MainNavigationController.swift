//
//  MainNavigationController.swift
//  Audible
//
//  Created by Amar Bhatia on 7/16/17.
//  Copyright © 2017 AmarBhatia. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        if isLoggedIn() {
            // user is logged in
            let homeController = HomeController()
            viewControllers = [homeController]
        } else {
            perform(#selector(showLoginController), with: nil, afterDelay: 0.01)
        }
    }
    
    fileprivate func isLoggedIn() -> Bool {
        return UserDefaults.standard.isLoggedIn()
        
    }
        
    func showLoginController() {
        let loginController = LoginController()
        present(loginController, animated: true) { 
            
        }
    }
}
