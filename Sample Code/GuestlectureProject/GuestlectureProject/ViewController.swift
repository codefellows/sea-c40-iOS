//
//  ViewController.swift
//  GuestlectureProject
//
//  Created by Adam Wallraff on 6/29/15.
//  Copyright (c) 2015 Adam Wallraff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func changeTabPressed(sender: AnyObject) {
    
    self.tabBarController?.selectedIndex = 1
    
  }

}

