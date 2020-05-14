//
//  MyAccountcell.swift
//  SahalatApp
//
//  Created by Vivek on 5/14/20.
//  Copyright © 2020 Vivek. All rights reserved.
//

import UIKit

class MyAccountcell: UITableViewCell {
    @IBOutlet weak var title: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        title.textColor = .black
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
