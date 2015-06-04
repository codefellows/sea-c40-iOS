//
//  ViewController.swift
//  SwiftClassRoster
//
//  Created by Bradley Johnson on 6/3/15.
//  Copyright (c) 2015 BPJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var colorButton: UIButton!
  var myNames = [String]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = UIColor.yellowColor()
    println("view did load")
  }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    self.view.backgroundColor = UIColor.grayColor()
    println("view will appear")
  }
  
  override func viewDidAppear(animated: Bool) {
    super.viewDidAppear(animated)
    println("view did appear")
  }
  
  @IBAction func switchChanged(sender: AnyObject) {
    
    self.colorButton.backgroundColor = UIColor.greenColor()

    
  }
  @IBAction func buttonPressed(sender: AnyObject) {
    self.view.backgroundColor = UIColor.orangeColor()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

