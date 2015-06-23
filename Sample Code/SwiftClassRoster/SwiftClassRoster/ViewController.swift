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
    
    self.loadPeopleFromPlist()
    
    self.tableView.dataSource = self

  }
  
  private func loadPeopleFromPlist() {
    
    if let peoplePath = NSBundle.mainBundle().pathForResource("People", ofType: "plist"),
      peopleObjects = NSArray(contentsOfFile: peoplePath) as? [[String : String]]
    {
      for object in peopleObjects {
        
        if let firstName = object["FirstName"],
               lastName = object["LastName"] {
            let person = Person(first: firstName, last: lastName)
              self.people.append(person)
        }
      }
    }
  }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    self.tableView.reloadData()
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.people.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
    let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! PersonCell
    let personToDisplay = self.people[indexPath.row]
    
    //with optional binding
    if let image = personToDisplay.image {
      cell.personImageView.image = image
    }
    
    cell.firstNameLabel.text = personToDisplay.firstName
    cell.lastNameLabel.text = personToDisplay.lastName
 
    
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
       // detailViewController.setupTextFields()
      }
    
      }
    }
  }

}

