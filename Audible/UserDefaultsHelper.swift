//
//  UserDefaultsHelper.swift
//  Audible
//
//  Created by Amar Bhatia on 7/16/17.
//  Copyright © 2017 AmarBhatia. All rights reserved.
//

import Foundation

extension UserDefaults {
    
    
    enum UserDefaultsKey: String {
        case isLoggedIn
    }
    
    func setIsLoggedIn(value: Bool) {
        set(value, forKey: UserDefaultsKey.isLoggedIn.rawValue)
        synchronize()
    }
    
    func isLoggedIn() -> Bool {
        return bool(forKey: UserDefaultsKey.isLoggedIn.rawValue)
    }
}
