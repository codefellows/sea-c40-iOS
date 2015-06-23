//
//  PersonCell.swift
//  SwiftClassRoster
//
//  Created by Bradley Johnson on 6/22/15.
//  Copyright (c) 2015 BPJ. All rights reserved.
//

import UIKit

class PersonCell: UITableViewCell {

  @IBOutlet weak var firstNameLabel: UILabel!
  
  @IBOutlet weak var lastNameLabel: UILabel!
  
  @IBOutlet weak var personImageView: UIImageView!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
