//: Playground - noun: a place where people can play

import UIKit

// Create a class called House that has a var of numOfRooms equal to 2
// Create a class called Person with an optional var of type House
// Create a new person instance, and optional chain to unwrap the numOfRooms if house exists
// Print the numOfRooms if the person has a house, or no house if not

class Person {
    var house: House?
}


class Kitchen {
    func kitchenIs() -> String? {
        return "white"
    }
}

class House {
    var numOfRooms = 2
    var kitchen : Kitchen?
}


var person = Person()

if let roomCount = person.house?.numOfRooms {
    print(roomCount)
} else {
    print("No House")
}


// Create a class called Address
// with variables buildingName, buildingNumber and street as optional strings
// add a method called buildingIdentifier() that returns an optional string
// use optional chaining to check if a building number and street exist, return it
// if a building name exists return that
// otherwise return nothing

class Address {
    var buildingName : String?
    var buildingNumber : String?
    var street : String?
    func buildingIdentifier() -> String? {
        if let buildingNumber = buildingNumber, let street = street {
            return "Number is \(buildingNumber) and street is \(street)"
        } else if let buildingName = buildingName {
            return "Name is \(buildingName)"
        } else {
            return nil
        }
    }
}

var add = Address()
add.buildingIdentifier()
add.buildingName = "Finches"
add.buildingIdentifier()
add.buildingNumber = "22"
add.street = "Main"
add.buildingIdentifier()

// from the top challenge try change the person's house number of rooms

person.house?.numOfRooms = 2

// create another class with an optional method, put that class as an optional in address
// then try call it

person.house?.kitchen?.kitchenIs()

person.house = House()
person.house?.kitchen = Kitchen()
person.house?.kitchen?.kitchenIs()


