//
//  PostHeaderCell.swift
//  Makestagram
//
//  Created by Anika Morris on 7/10/17.
//  Copyright © 2017 Anika Morris. All rights reserved.
//

import UIKit

class PostHeaderCell: UITableViewCell {
    @IBOutlet weak var usernameLabel: UILabel!
    
    override func awakeFromNib() {
         super.awakeFromNib()
    }
    
    @IBAction func optionsButtonTapped(_ sender: UIButton) {
        print("options button tapped")
    }
}
