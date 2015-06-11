//
//  DetailViewController.swift
//  SwiftClassRoster
//
//  Created by Bradley Johnson on 6/10/15.
//  Copyright (c) 2015 BPJ. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  
  @IBOutlet weak var firstNameLabel: UILabel!
  var selectedPerson : Person!

    override func viewDidLoad() {
        super.viewDidLoad()
      self.firstNameLabel.text = self.selectedPerson.firstName
        // Do any additional setup after loading the view.
    }

}
