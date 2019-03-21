//
//  StudentResultViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class StudentResultViewController: UIViewController {
    
    @IBOutlet weak var txtid: UITextField!
    
    @IBOutlet weak var txtdate: UITextField!
    @IBOutlet weak var txtname: UITextField!
    @IBOutlet weak var txtcourse: UITextField!
    
    @IBOutlet weak var txtemail: UITextField!
    
    @IBOutlet weak var m1: UILabel!
    @IBOutlet weak var m4: UILabel!
    
    @IBOutlet weak var m5: UILabel!
    @IBOutlet weak var m3: UILabel!
    @IBOutlet weak var m2: UILabel!
    var id:String?
    var name:String?
    var date:String?
    var gender:String?
    var txtm1,txtm2,txtm3,txtm4,txtm5: Int?
    var grade:String?
    var total:Int?
    var percentage:Float?
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        showdata()

        
    }
    
   func showdata()
   {
    if let tb1 = id
    {
        txtid.text=tb1
    }
    if let tb2 = name
    {
        txtname.text=tb2
    }
    if let tb3 = gender
    {
        txtcourse.text=tb3
    }
    if let tb4 = date
    {
        txtdate.text=tb4
    }
    if let tb5 = txtm1
    {
        m1.text = String(tb5)
    }
    if let tb6 = txtm2
    {
        m2.text=String(tb6)
    }
    if let tb7 = txtm3
    {
        m3.text=String(tb7)
    }
    if let tb8 = txtm4
    {
        m4.text=String(tb8)
    }
    if let tb9 = txtm5
    {
        m5.text=String(tb9)
    }
    let total = txtm1!+txtm2!+txtm3!+txtm4!+txtm5!
    let percentage = total/5
    }
    
   

}
