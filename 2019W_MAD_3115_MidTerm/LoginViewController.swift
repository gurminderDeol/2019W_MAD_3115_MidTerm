//
//  ViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtemail: UITextField!
    
    @IBOutlet weak var txtpassword: UITextField!
    
    @IBOutlet weak var swh: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    
    
    
    
    
    
    @IBAction func btnlogin(_ sender: UIButton) {
        
        
        
        if txtemail.text == "admin" && txtpassword.text == "admin@123"
        {
            let sb = UIStoryboard(name: "Main", bundle: nil)
            let vc = sb.instantiateViewController(withIdentifier: "student") as! StudentEntryViewController
            self.navigationController?.pushViewController(vc, animated: true)
        }
        else
        {
            let alert = UIAlertController(title: nil, message: "Invalid details", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
}

