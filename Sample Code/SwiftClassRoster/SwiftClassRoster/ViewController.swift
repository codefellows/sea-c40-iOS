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
  
  var people = [Person]()
  var myInfo = [String : Person]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.tableView.dataSource = self
    
    let russell = Person(first: "Russell", last: "Wilson")
    let richard = Person(first: "Richard", last: "Sherman")
    self.people.append(russell)
    self.people.append(richard)
    
    self.myInfo["bff"] = russell
    self.myInfo["buddy"] = richard
    
    var QB1 = self.myInfo["bff1"]
    QB1?.firstName
    
    
  }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    self.tableView.reloadData()
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.people.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
    let personToDisplay = self.people[indexPath.row]
    
    //without optional binding
    if personToDisplay.image != nil {
      cell.imageView?.image = personToDisplay.image!
    }
    
    //with optional binding
    if let image = personToDisplay.image {
      cell.imageView?.image = image
    }
    
    
    
    
    
    cell.textLabel?.text = personToDisplay.firstName + " " + personToDisplay.lastName
    return cell
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "ShowDetailViewController" {
      
    if let detailViewController = segue.destinationViewController as? DetailViewController {
      
      let myIndexPath = self.tableView.indexPathForSelectedRow()
      
      if let indexPath = self.tableView.indexPathForSelectedRow() {
      
      let selectedRow = indexPath.row
      let selectedPerson = self.people[selectedRow]
      println(selectedPerson.firstName)
     detailViewController.selectedPerson = selectedPerson
      }
    
      }
    }
  }

}

