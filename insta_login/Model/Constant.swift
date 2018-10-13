//
//  Constant.swift
//  insta_login
//
//  Created by Hardik on 13/10/18.
//  Copyright © 2018 Nikunj Kalaraiya. All rights reserved.
//

import UIKit
import Foundation



let APP_DEL                             =   (UIApplication.shared.delegate as? AppDelegate)
let USER_DEFAULTS                       =   UserDefaults.standard
let ROOTVC                              =   APP_DEL?.window?.rootViewController
let MAIN_WINDOW                         =   UIApplication.shared.keyWindow


let NAV_HEIGHT                          =   UINavigationBar.appearance().frame.size.height + UIApplication.shared.statusBarFrame.size.height
let SCREEN_WIDTH                        =   UIScreen.main.bounds.width
let SCREEN_HEIGHT                       =   UIScreen.main.bounds.height
func SCREEN_WIDTH_CAL(orignalSize:CGFloat) -> CGFloat { return orignalSize * SCREEN_WIDTH / 375 }
func SCREEN_HEIGHT_CAL(orignalSize:CGFloat) -> CGFloat { return orignalSize * SCREEN_HEIGHT / 667 }

let IPAD = UIDevice.current.userInterfaceIdiom == .pad
let StoryBoard = UIStoryboard(name: "Main", bundle: nil)
