//
//  Registration1VC.swift
//  SahalatApp
//
//  Created by Vivek on 5/8/20.
//  Copyright © 2020 Vivek. All rights reserved.
//

import UIKit

class Registration1VC: UIViewController {
    @IBOutlet weak var emailField: UITextField!
       @IBOutlet weak var phoneField: UITextField!
       @IBOutlet weak var sendOTPButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = kBackgroundviewcolor

        // Do any additional setup after loading the view.
        phoneField.attributedPlaceholder = NSAttributedString(string: "Enter Mobile no.",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray])

        emailField.attributedPlaceholder = NSAttributedString(string: "Enter E-mail here",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.darkGray])

    }
    @IBAction func sendOtpAction(sender: UIButton){
        let story = UIStoryboard.init(name: "MyAccount", bundle: nil)
               let vc = story.instantiateViewController(identifier: "Registration2VC")
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
