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
           let attributes = [
                        NSAttributedString.Key.foregroundColor: UIColor.white,
                        NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18)
                    ]
        usernameField.attributedPlaceholder = NSAttributedString(string: "Username", attributes:attributes)
        passwordField.attributedPlaceholder = NSAttributedString(string: "Password", attributes:attributes)
        
    }
    @IBAction func backAction(sender: UIButton){
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func loginAction(sender: UIButton){
        self.navigationController?.popToRootViewController(animated: true)

    }
    @IBAction func signupAction(sender: UIButton){
        self.navigationController?.popViewController(animated: true)
       // self.dismiss(animated: true) {
            self.delegate?.openRegistartionPage()
      //  }
        
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
