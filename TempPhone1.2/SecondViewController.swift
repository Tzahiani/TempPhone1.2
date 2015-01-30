//
//  SecondViewController.swift
//  TempPhone1.2
//
//  Created by Tzahi Anidgar on 17/11/14.
//  Copyright (c) 2014 GreatApp. All rights reserved.
//

import UIKit
import Foundation

class SecondViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet var txtPerson: UITextField!
    @IBOutlet var txtPhone : UITextField!
    
    
    var dateString = "2014-07-15" // change to your date format
    /*
    var dateFormatter = NSDateFormatter()
    dateFormatter.dateFormat = "YYYY-MM-DD"import Foundation    
    var date = dateFormatter.dateFromString(dateString)
    println(date)
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    @IBAction func btnAddPerson_Click(sender: UIButton){
        phoMgr.addPerson(txtPerson.text, Phone: txtPhone.text, days: dateString);
        self.view.endEditing(true);
        txtPerson.text = ""
        txtPhone.text = ""
        self.tabBarController?.selectedIndex = 0;
    }
    
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true
    }


}

