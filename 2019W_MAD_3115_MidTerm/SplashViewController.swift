//
//  SplashViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        perform(#selector(splash), with: nil, afterDelay: 3)
    }
    
    @objc func splash()
    {
        performSegue(withIdentifier: "login", sender: self)
    }
   

}
