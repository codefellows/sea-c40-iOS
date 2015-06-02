//: Playground - noun: a place where people can play

import UIKit

class Car {
  var make = "ford"
  var model = "mustang"
  var year = "1998"
}

let myBFF = "Russell Wilson"
//myBFF = "Someone else"
var myFavoriteFood = "Pizza"
myFavoriteFood = "Tacos"

let myNumber = 21
var myOtherNumber = 34.34534534

class Pokemon {
  var level = 1
  var health = 100
  var type = "None"
  
  func levelUp() {
    self.level++
  }
  
  init (startingLevel : Int) {
    self.level = startingLevel
    //level = startingLevel
  }
}

class Bulbasaur : Pokemon {
  func grassAttack () {
    
  }
}

let myBulby = Bulbasaur(startingLevel: 1)


class Squirtle : Pokemon {

  func bubbleWithMultiplier(multiplier : Int,enemyType : String) -> Int {
    if self.level < 5 {
        return 20
    } else {
      return 30
    }
  }
}

class WarTurtle : Squirtle {
  func waterBlast() {
    
  }
}

let myWarTurtle = WarTurtle(startingLevel: 30)
myWarTurtle.bubbleWithMultiplier(20, enemyType: "Fire")
myWarTurtle.waterBlast()

let mySquirmy = Squirtle(startingLevel: 20)
let myOtherSquirmy = Squirtle(startingLevel: 1)
let mySuperSquirtle = Squirtle(startingLevel: 100)
let totalDamage = mySquirmy.bubbleWithMultiplier(2, enemyType:"Fire")

func doSomething() {
  
}

doSomething()











