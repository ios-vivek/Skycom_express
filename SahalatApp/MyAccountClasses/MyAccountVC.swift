//
//  MyAccountVC.swift
//  SahalatApp
//
//  Created by Vivek on 5/14/20.
//  Copyright © 2020 Vivek. All rights reserved.
//

import UIKit

class MyAccountVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var accountTable: UITableView!
var listArray = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        listArray = ["Profile","Email Address","Mobile","Address","Manager Cards","Notification"]
    }
    @IBAction func backAction(sender: UIButton){
              self.navigationController?.popViewController(animated: true)
          }
    func numberOfSections(in tableView: UITableView) -> Int {
        return listArray.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyAccountcell", for: indexPath) as! MyAccountcell

        cell.title.text = listArray[indexPath.section]

        return cell
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
             let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 20))
             let headerLabel = UILabel(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width-20, height: 10))
             headerLabel.text = ""
             headerView.addSubview(headerLabel)
        headerView.backgroundColor = kGraycolor
           
           return headerView
         }
         
         private func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
          return 20.0
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
