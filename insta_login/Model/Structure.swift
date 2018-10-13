//
//  Structure.swift
//  insta_login
//
//  Created by Hardik on 13/10/18.
//  Copyright © 2018 Nikunj Kalaraiya. All rights reserved.
//

import UIKit
import Foundation



struct INSTA {
    static let clientID = "ffe7838ee42b4537b6ed369d5aa9cca3"
    static let clientSecret = "6088f819c2f54a2e95ffb7cfe163a5fe"
    static let redirectURI = "http://fliksomething.com/flik_app/api"
}


struct VCS {
    
    static var login: LoginVC {
        get {
            return StoryBoard.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        }
    }
    
    static var home: HomeVC {
        get {
            return StoryBoard.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
        }
    }
}
