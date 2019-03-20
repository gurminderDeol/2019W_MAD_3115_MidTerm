//
//  ViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    let userdefaults = UserDefaults.standard

    @IBOutlet weak var txtemail: UITextField!
    
    @IBOutlet weak var txtpassword: UITextField!
    
    @IBOutlet weak var swh: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let uid = userdefaults.string(forKey: "user")
        {
            txtemail.text=uid
            swh.isOn=true
        }
        if let pass = userdefaults.string(forKey: "pass")
        {
            txtpassword.text=pass
            swh.isOn=true
        }
    

    
    
    
    
    
    
}
    @IBAction func btnlogin(_ sender: UIButton) {
        if swh.isOn
        {
            userdefaults.set(txtemail.text, forKey: "user")
            userdefaults.set(txtpassword.text, forKey: "pass")
            
        }
        else{
            userdefaults.removeObject(forKey: "user")
            userdefaults.removeObject(forKey: "pass")
        }
        
        
        
        
        if txtemail.text == "admin" && txtpassword.text == "admin@123"
        {
            
            
            performSegue(withIdentifier: "student", sender: self)
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

