//
//  Registration3VC.swift
//  SahalatApp
//
//  Created by Vivek on 5/8/20.
//  Copyright © 2020 Vivek. All rights reserved.
//

import UIKit

class Registration3VC: BaseVC {
    @IBOutlet weak var passwordField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = kBackgroundviewcolor

        // Do any additional setup after loading the view.
        let attributes = [
                               NSAttributedString.Key.foregroundColor: UIColor.black,
                               NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18)
                           ]
               passwordField.attributedPlaceholder = NSAttributedString(string: "Enter Password", attributes:attributes)
    }
    @IBAction func continueAction(sender: UIButton){
        self.navigationController?.popToRootViewController(animated: true)
    }
    @IBAction func backAction(sender: UIButton){
           self.navigationController?.popViewController(animated: true)
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
