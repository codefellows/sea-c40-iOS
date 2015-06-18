//
//  Person.swift
//  SwiftClassRoster
//
//  Created by Bradley Johnson on 6/10/15.
//  Copyright (c) 2015 BPJ. All rights reserved.
//

import UIKit

class Person {
  
  var firstName : String
  var lastName : String
  var image : UIImage?
  
  init (first : String, last : String) {
    self.firstName = first
    self.lastName = last
  }
}
