//
//  HomeVC.swift
//  insta_login
//
//  Created by Hardik on 13/10/18.
//  Copyright © 2018 Nikunj Kalaraiya. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    //MARK: - OUTLETS
    @IBOutlet fileprivate var btnLogout: UIButton!
    
    //MARK: - OVERRIDES
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigation()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //Make logout button shape
        btnLogout.shapeRoundRadius()
    }
    
    deinit {
        
    }
}



extension HomeVC {
    //Customize Navigation
    fileprivate func setupNavigation() {
        navigationItem.title = "Home"
        navigationItem.leftBarButtonItem = UIBarButtonItem()
    }
}



extension HomeVC {
    //Show Login View
    @IBAction fileprivate func onPressLogoutButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
