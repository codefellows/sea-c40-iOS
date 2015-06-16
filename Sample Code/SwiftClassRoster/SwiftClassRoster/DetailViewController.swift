//
//  DetailViewController.swift
//  SwiftClassRoster
//
//  Created by Bradley Johnson on 6/10/15.
//  Copyright (c) 2015 BPJ. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {
  
  @IBOutlet weak var firstNameTextField: UITextField!
  @IBOutlet weak var lastNameTextField: UITextField!

  var selectedPerson : Person!

    override func viewDidLoad() {
        super.viewDidLoad()
      self.firstNameTextField.delegate = self
      self.lastNameTextField.delegate = self
      self.firstNameTextField.tag = 0
      self.lastNameTextField.tag = 1
      
      //self.firstNameLabel.text = self.selectedPerson.firstName
      self.firstNameTextField.text = self.selectedPerson.firstName
      self.lastNameTextField.text = self.selectedPerson.lastName
        // Do any additional setup after loading the view.
    }
  
  func textFieldShouldReturn(textField: UITextField) -> Bool {

    textField.resignFirstResponder()
    return false
  }
  
  func textFieldDidEndEditing(textField: UITextField) {
    if textField.tag == 0 {
      //set the first name
      self.selectedPerson.firstName =  textField.text
    } else {
      //set the last name
      self.selectedPerson.lastName = textField.text
    }
  }

}
