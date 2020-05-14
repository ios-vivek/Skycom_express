//
//  Registration1VC.swift
//  SahalatApp
//
//  Created by Vivek on 5/8/20.
//  Copyright © 2020 Vivek. All rights reserved.
//

import UIKit

class Registration1VC: BaseVC {
    @IBOutlet weak var emailField: UITextField!
       @IBOutlet weak var phoneField: UITextField!
       @IBOutlet weak var sendOTPButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = kBackgroundviewcolor

        // Do any additional setup after loading the view.
       
        let attributes = [
                        NSAttributedString.Key.foregroundColor: UIColor.black,
                        NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18)
                    ]
        phoneField.attributedPlaceholder = NSAttributedString(string: "Enter Mobile no.", attributes:attributes)
        emailField.attributedPlaceholder = NSAttributedString(string: "Enter E-mail here", attributes:attributes)
        

       

    }
    @IBAction func backAction(sender: UIButton){
           self.navigationController?.popViewController(animated: true)
       }
    @IBAction func sendOtpAction(sender: UIButton){
        let story = UIStoryboard.init(name: "MyAccount", bundle: nil)
               let vc = story.instantiateViewController(identifier: "Registration2VC")
              // self.navigationController?.present(vc, animated: true, completion: nil)
        self.navigationController?.pushViewController(vc, animated: true)

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
