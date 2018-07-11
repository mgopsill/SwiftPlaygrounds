//: Playground - noun: a place where people can play

import UIKit

// Create a class called vehicle with
// variable of wheels default to 4
// variable of canContainPassengers as a none changeable boolean
// variable of currentSpeed
// variable of description that returns a string telling you the current speed
// method of drive that prints vroom

class Vehicle {
    var wheels = 4
    final var canContainPassengers = true
    var currentSpeed = 20
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func drive() {
        print("Vroom")
    }
}

// create a class of Train that says choo choo when drives
class Train : Vehicle {
    override func drive() {
        print("Choo Choo")
    }
}


// create a class of bike
// with a variable called gear
// override the description variable to return the vehicle description
// plus what gear the bike is in

class Bike : Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)"
    }
}


