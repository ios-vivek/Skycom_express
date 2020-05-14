//
//  PickDeliverVC.swift
//  SahalatApp
//
//  Created by Vivek on 5/10/20.
//  Copyright © 2020 Vivek. All rights reserved.
//

import UIKit

class PickDeliverVC: BaseVC {
      @IBOutlet weak var receiverField: UITextField!
        @IBOutlet weak var senderField: UITextField!
        @IBOutlet weak var weightField: UITextField!
        @IBOutlet weak var selectWeight: UIButton!
        @IBOutlet weak var calculateBtn: UIButton!
        @IBOutlet weak var parcelBtn: UIButton!

        @IBOutlet weak var documenteBtn: UIButton!
        @IBOutlet weak var weightView: UIView!
    @IBOutlet weak var lField: UITextField!
    @IBOutlet weak var wField: UITextField!
    @IBOutlet weak var hField: UITextField!
    @IBOutlet weak var dimensionsView: UIView!
    @IBOutlet weak var descriptionview: UIView!


        override func viewDidLoad() {
            super.viewDidLoad()
            self.view.backgroundColor = kBackgroundviewcolor

            // Do any additional setup after loading the view.
            selectWeight.layer.cornerRadius = 8
            calculateBtn.layer.cornerRadius = 5
            weightField.layer.borderWidth = 1
            weightField.layer.borderColor = kGraycolor.cgColor
            weightView.layer.cornerRadius = 5
            dimensionsView.layer.borderWidth = 1
            dimensionsView.layer.borderColor = kGraycolor.cgColor
            lField.layer.borderWidth = 1
            lField.layer.borderColor = kGraycolor.cgColor
            wField.layer.borderWidth = 1
            wField.layer.borderColor = kGraycolor.cgColor
            hField.layer.borderWidth = 1
            hField.layer.borderColor = kGraycolor.cgColor
            descriptionview.layer.borderWidth = 2
            descriptionview.layer.borderColor = kGraycolor.cgColor
            descriptionview.backgroundColor = .white
            let attributes = [
                NSAttributedString.Key.foregroundColor: UIColor.white,
                NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18)
            ]
lField.attributedPlaceholder = NSAttributedString(string: "L", attributes:attributes)
            wField.attributedPlaceholder = NSAttributedString(string: "W", attributes:attributes)
            hField.attributedPlaceholder = NSAttributedString(string: "H", attributes:attributes)
            receiverField.attributedPlaceholder = NSAttributedString(string: "(Enter address of receiver)", attributes:attributes)
            senderField.attributedPlaceholder = NSAttributedString(string: "(Enter address of sender)", attributes:attributes)
            weightField.attributedPlaceholder = NSAttributedString(string: "(Enter weight)", attributes:attributes)

               
        }
    @IBAction func backAction(sender: UIButton){
              self.navigationController?.popViewController(animated: true)
          }
        @IBAction func selectWieghtType(sender: UIButton){
            self.openPicker(arr: ["KG, GM"])
        }
        @IBAction func calculateAction(sender: UIButton){
            
        }
        @IBAction func dimensionAction(sender: UIButton){
        self.openPicker(arr: ["in, c"])
        }
        @IBAction func parcelAction(sender: UIButton){
            parcelBtn.layer.borderWidth = 2
            parcelBtn.layer.borderColor = UIColor.red.cgColor
            documenteBtn.layer.borderWidth = 0
            documenteBtn.layer.borderColor = UIColor.clear.cgColor
        }
        @IBAction func documentAction(sender: UIButton){
            parcelBtn.layer.borderWidth = 0
            parcelBtn.layer.borderColor = UIColor.clear.cgColor
            documenteBtn.layer.borderWidth = 2
            documenteBtn.layer.borderColor = UIColor.red.cgColor
        }
    func openPicker(arr: [String]){
                       let dateFormatter = DateFormatter()
                       dateFormatter.dateFormat = "yyyy"
                       let date = dateFormatter.defaultDate
                let selectionMode = SBPickerSwiftSelector.Mode.text
          
                          let array = ["KG","GM"]
         
                       SBPickerSwiftSelector(mode: selectionMode, data: array, defaultDate: date).cancel {
                           print("cancel")
                           }.set { values in
                               if let values = values as? [String] {
        print(values[0])
                                self.selectWeight.setTitle("\(values[0])", for: .normal)
                                 
                               } else if let values = values as? [Date] {
                                   let dateFormatter = DateFormatter()
                                   dateFormatter.dateFormat = "MM/dd/yyyy"
                                //   self.dateTextField.text = dateFormatter.string(from: values[0])
                                print(dateFormatter.string(from: values[0]))
                               // self.dobTextFiled.text = dateFormatter.string(from: values[0])
                               }
                               
                           }.present(into: self)
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
