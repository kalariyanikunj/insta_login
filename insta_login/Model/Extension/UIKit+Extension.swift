//
//  UIKit+Extension.swift
//  insta_login
//
//  Created by Hardik on 13/10/18.
//  Copyright © 2018 Nikunj Kalaraiya. All rights reserved.
//

import UIKit
import Foundation



extension UIView {
    
    func shapeRoundRadius() {
        layer.cornerRadius = frame.height/2
        clipsToBounds = true
    }
    
    func shapeRadius(_ radius: CGFloat) {
        layer.cornerRadius = radius
        clipsToBounds = true
    }
}
