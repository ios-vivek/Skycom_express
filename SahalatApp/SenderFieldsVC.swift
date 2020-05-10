//
//  SenderFieldsVC.swift
//  SahalatApp
//
//  Created by Vivek on 5/10/20.
//  Copyright © 2020 Vivek. All rights reserved.
//

import UIKit

class SenderFieldsVC: BaseVC {
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var contactField: UITextField!
    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var addressField: UITextField!
    @IBOutlet weak var selectLocationBtn: UIButton!
    @IBOutlet weak var dateOfPickupBtn: UIButton!
    @IBOutlet weak var timeOfPickupBtn: UIButton!
    @IBOutlet weak var continueBtn: UIButton!


    override func viewDidLoad() {
        super.viewDidLoad()

       let attributes = [
            NSAttributedString.Key.foregroundColor: kGraycolor,
            NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 16)
        ]

        nameField.attributedPlaceholder = NSAttributedString(string: "Name of Sender", attributes:attributes)
        contactField.attributedPlaceholder = NSAttributedString(string: "Contact number", attributes:attributes)
        cityField.attributedPlaceholder = NSAttributedString(string: "City", attributes:attributes)
        addressField.attributedPlaceholder = NSAttributedString(string: "City", attributes:attributes)
        nameField.layer.backgroundColor = kGraycolor.cgColor
        nameField.layer.borderWidth = 2
        contactField.layer.backgroundColor = kGraycolor.cgColor
        contactField.layer.borderWidth = 2
        cityField.layer.backgroundColor = kGraycolor.cgColor
        cityField.layer.borderWidth = 2
        addressField.layer.backgroundColor = kGraycolor.cgColor
        addressField.layer.borderWidth = 2
        selectLocationBtn.layer.backgroundColor = kGraycolor.cgColor
        selectLocationBtn.layer.borderWidth = 2
        dateOfPickupBtn.layer.backgroundColor = kGraycolor.cgColor
        dateOfPickupBtn.layer.borderWidth = 2
        timeOfPickupBtn.layer.backgroundColor = kGraycolor.cgColor
        timeOfPickupBtn.layer.borderWidth = 2
        continueBtn.layer.borderWidth = 5
        

        
    }
    
    @IBAction func selectLocationAction(sender: UIButton){
        
    }
    @IBAction func selectDateAction(sender: UIButton){
        
    }
    @IBAction func selectTimeAction(sender: UIButton){
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
