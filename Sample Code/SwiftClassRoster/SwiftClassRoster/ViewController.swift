//
//  ViewController.swift
//  SwiftClassRoster
//
//  Created by Bradley Johnson on 6/3/15.
//  Copyright (c) 2015 BPJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

  @IBOutlet weak var tableView: UITableView!
  var seahawks = [String]()
  var mariners = [String]()
  let numberOfSections = 2
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.tableView.dataSource = self
    
    self.seahawks.append("Russell")
    self.seahawks.append("Richard")
    self.seahawks.append("Pete")
    
    self.mariners.append("Kyle")
   // self.view.backgroundColor = UIColor.yellowColor()
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
  
  func numberOfSectionsInTableView(tableView: UITableView) -> Int {
    return numberOfSections
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    if section == 0 {
      return self.mariners.count
    } else {
    return self.seahawks.count
    }
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
    cell.backgroundColor = UIColor.whiteColor()
    if indexPath.row == 0 {
      cell.backgroundColor = UIColor.redColor()
    }
    if indexPath.section == 0 {
      let nameToDisplay = self.mariners[indexPath.row]
      cell.textLabel?.text = nameToDisplay
    } else {
    let nameToDisplay = self.seahawks[indexPath.row]
    //cell.textLabel?.text = "\(indexPath.row)"
    cell.textLabel?.text = nameToDisplay
    }
    return cell
  }
  
  func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    if section == 0 {
      return "Mariners"
    } else {
      return "Seahawks"
    }
  }

}

