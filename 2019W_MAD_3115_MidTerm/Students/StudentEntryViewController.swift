//
//  StudentEntryViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class StudentEntryViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    

    @IBOutlet weak var txtstudentid: UITextField!
    @IBOutlet weak var txtstudentName: UITextField!
    @IBOutlet var seggender: UIView!
    
    @IBOutlet weak var picker1: UIPickerView!
    @IBOutlet weak var txtemail: UITextField!
    
    @IBOutlet weak var txtm2: UITextField!
    @IBOutlet weak var textm1: UITextField!
    @IBOutlet weak var txtm3: UITextField!
    @IBOutlet weak var txtm4: UITextField!
    
    @IBOutlet weak var txtm5: UITextField!
    var date:String?
    var gender:String?
    
    var course = ["MADT", "MODT", "CSD", "WADT"]
    override func viewDidLoad() {
        super.viewDidLoad()
       self.picker1.delegate=self
        self.picker1.dataSource=self
    }

    @IBAction func dateview(_ sender: UIDatePicker) {
        let date1 = DateFormatter()
        date1.dateFormat = "dd-MM-yyyy"
        let dates = date1.string(from: sender.date)
        date = dates
    
        
    }
    @IBAction func seggender(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0
        {
            gender="male"
        }
        else
        {
         gender="female"
        }
        
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return self.course.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return course[row]
    }

    @IBAction func btnsave(_ sender: UIButton)
    {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "result") as! StudentResultViewController
        self.navigationController?.pushViewController(vc, animated: true)
        vc.id = txtstudentid.text
        vc.name = txtstudentName.text
        vc.date = date
        vc.gender=gender
        //vc.txtm1=Int(
    }
}
