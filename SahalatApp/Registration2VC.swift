//
//  Registration2VC.swift
//  SahalatApp
//
//  Created by Vivek on 5/8/20.
//  Copyright © 2020 Vivek. All rights reserved.
//

import UIKit

class Registration2VC: UIViewController {
    @IBOutlet weak var enterOTPField: UITextField!
       @IBOutlet weak var inputField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = kBackgroundviewcolor
        inputField.layer.borderWidth = 1
        inputField.layer.borderColor = UIColor.darkGray.cgColor
        inputField.textColor = .darkGray
        enterOTPField.attributedPlaceholder = NSAttributedString(string: "Enter OTP here",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.black])
        
    }
    @IBAction func resendOtpAction(sender: UIButton){
        
    }
    @IBAction func resendNowAction(sender: UIButton){
        let story = UIStoryboard.init(name: "MyAccount", bundle: nil)
               let vc = story.instantiateViewController(identifier: "Registration3VC")
               self.navigationController?.present(vc, animated: true, completion: nil)
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
