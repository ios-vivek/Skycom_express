//
//  LoginVC.swift
//  SahalatApp
//
//  Created by Vivek on 5/8/20.
//  Copyright © 2020 Vivek. All rights reserved.
//

import UIKit

protocol LoginDelegate: class{
    func loggedIn()
    func openRegistartionPage()
}

class LoginVC: BaseVC {
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    weak var delegate: LoginDelegate?


    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = kBackgroundviewcolor

        // Do any additional setup after loading the view.
        loginButton.layer.borderWidth = 1
        loginButton.layer.borderColor = kBluecolor.cgColor
        registerButton.backgroundColor = kBluecolor
        usernameField.attributedPlaceholder = NSAttributedString(string: "Username",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        passwordField.attributedPlaceholder = NSAttributedString(string: "Password",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
    }
    @IBAction func loginAction(sender: UIButton){
        
    }
    @IBAction func signupAction(sender: UIButton){
        self.dismiss(animated: true) {
            self.delegate?.openRegistartionPage()
        }
        
    }
    @IBAction func forgotPasswordAction(sender: UIButton){
        
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
