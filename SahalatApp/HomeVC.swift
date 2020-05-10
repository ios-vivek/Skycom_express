//
//  ViewController.swift
//  SahalatApp
//
//  Created by Vivek on 4/27/20.
//  Copyright © 2020 Vivek. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
class HomeVC: BaseVC, LoginDelegate {
 
    
    @IBOutlet weak var aboutusView: UIView!
    @IBOutlet weak var termsView: UIView!
    @IBOutlet weak var callView: UIView!
    @IBOutlet weak var whatsappView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        navigationController?.navigationBar.barTintColor = .white
        self.view.backgroundColor = kBackgroundviewcolor

        aboutusView.tag = 1
        termsView.tag = 2
        callView.tag = 3
        whatsappView.tag = 4
        aboutusView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.tap(_:))))
        termsView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.tap(_:))))

        callView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.tap(_:))))
        whatsappView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.tap(_:))))



    }
    @objc func tap(_ gestureRecognizer: UITapGestureRecognizer) {
        let tag = gestureRecognizer.view?.tag
        switch tag! {
        case 1 :
            print("select first view")
            let story = UIStoryboard.init(name: "Main", bundle: nil)
            let vc = story.instantiateViewController(identifier: "AboutUsVC")
            self.navigationController?.present(vc, animated: true, completion: nil)
        case 2 :
            print("select second view")
        case 3 :
            print("select third view")
            
        default:
            let story = UIStoryboard.init(name: "MyAccount", bundle: nil)
            let vc = story.instantiateViewController(identifier: "LoginVC") as! LoginVC
            vc.delegate = self
            self.navigationController?.present(vc, animated: true, completion: nil)
        }
    }
    @IBAction func openCalculaterPage(){
        let story = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = story.instantiateViewController(identifier: "CalculaterVC")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func openPickDeliverPage(){
        let story = UIStoryboard.init(name: "Main", bundle: nil)
               let vc = story.instantiateViewController(identifier: "PickDeliverVC")
               self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func openBuyDeliverPage(){
        let story = UIStoryboard.init(name: "Main", bundle: nil)
               let vc = story.instantiateViewController(identifier: "PickDeliverVC")
               self.navigationController?.pushViewController(vc, animated: true)
    }
    func openRegistartionPage(){
       let story = UIStoryboard.init(name: "MyAccount", bundle: nil)
        let vc = story.instantiateViewController(identifier: "Registration1VC")
        self.navigationController?.present(vc, animated: true, completion: nil)
    }
    func loggedIn() {
         print("logged in")
        
     }

}

