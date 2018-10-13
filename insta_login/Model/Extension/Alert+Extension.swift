//
//  Alert+Extension.swift
//  insta_login
//
//  Created by Hardik on 13/10/18.
//  Copyright © 2018 Nikunj Kalaraiya. All rights reserved.
//

import Foundation
import UIKit


extension UIAlertController {
    
    convenience init(title: String, message: String) {
        self.init(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        self.addAction(okAction)
    }
    
    convenience init(netErrorTitle: String) {
        self.init(title: netErrorTitle, message:"Internet not available, please check your internet connectivity and try again", preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        self.addAction(okAction)
    }
    
    convenience init(title: String, message: String, handler: @escaping(UIAlertAction) -> Void) {
        self.init(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (actionOther) in
            handler(actionOther)
        }
        self.addAction(okAction)
        
    }
    
    convenience init(title: String, message: String, actionName: String, handler: @escaping(UIAlertAction) -> Void) {
        self.init(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: nil)
        self.addAction(cancelAction)
        let otherAction = UIAlertAction(title: actionName, style: UIAlertAction.Style.default) { (actionOther) in
            handler(actionOther)
        }
        self.addAction(otherAction)
    }
}
