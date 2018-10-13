//
//  LoginVC.swift
//  insta_login
//
//  Created by Hardik on 13/10/18.
//  Copyright © 2018 Nikunj Kalaraiya. All rights reserved.
//

import UIKit
import InstagramLogin

class LoginVC: UIViewController {

    //MARK: - OUTLETS
    fileprivate var instagramLogin: InstagramLoginViewController!
    @IBOutlet fileprivate var btnLogin: UIButton!
    
    //MARK: - OVERRIDES
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //Make login button shape
        btnLogin.shapeRoundRadius()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    deinit {
        
    }
}



extension LoginVC {
    
    //Login button press action
    @IBAction fileprivate func onPressLoginButton(_ sender: UIButton) {
        //Cofigure and register instagram client details
        instagramLogin = InstagramLoginViewController(clientId: INSTA.clientID, redirectUri: INSTA.redirectURI)
        instagramLogin.delegate = self
        instagramLogin.progressViewTintColor = .blue
        instagramLogin.scopes = [.basic]
        
        //Customize instagram login view
        instagramLogin.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .stop, target: self, action: #selector(dismissLoginViewController))
        instagramLogin.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(refreshPage))
        
        //Present instagram login view
        let vc = UINavigationController(rootViewController: instagramLogin)
        vc.navigationBar.isTranslucent = false
        present(vc, animated: true, completion: nil)
    }
    
    //Close instagram login view
    @objc fileprivate func dismissLoginViewController() {
        instagramLogin.dismiss(animated: true)
    }
    
    //Refresh instagram login page
    @objc fileprivate func refreshPage() {
        instagramLogin.reloadPage()
    }
}



//MARK: - InstagramLoginViewControllerDelegate
extension LoginVC: InstagramLoginViewControllerDelegate {
    
    func instagramLoginDidFinish(accessToken: String?, error: InstagramError?) {
        dismissLoginViewController()
        
        guard accessToken == nil else {
            //Show Home View
            navigationController?.pushViewController(VCS.home, animated: true)
            return
        }
        //Show Error Alert
        let alert = UIAlertController(title: "\(error!.localizedDescription) 👎", message: "")
        present(alert, animated: true, completion: nil)
    }
}

