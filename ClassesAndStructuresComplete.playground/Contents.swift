//: Playground - noun: a place where people can play

import UIKit

// Define a struct called resolution with a height and width
struct Resolution {
    var height = 0
    var width = 0
}

// Define a class for with some variables
class Phone {
    var touchscreen: Bool = false
    var size = 0
}

// Instantiate a new instance of your struct and class
var newResolution = Resolution()
var iPhone = Phone()

// Initialise a new structure of resolution passing properties
var newerResolution = Resolution(height: 3, width: 2)

// Change some variables from your classes
iPhone.touchscreen = true
print(iPhone.touchscreen)

// Create a instance of your Structure from another instance of your structure
// then change a variable in the structure and print the variable in both structures
var olderResolution = newerResolution
olderResolution.height = 1
print(olderResolution.height)
print(newerResolution.height)

// Q: Structures, Data Types and Enums are ______ types? Meaning?
// A: Value - they create new instances of themselves

// Create an instance of a class from a prior created class
// modify a property of the class, then print the properties in both the
// old class instance and new
var samsung = iPhone
samsung.touchscreen = false
print(samsung.touchscreen)
print(iPhone.touchscreen)

// Q: Classes are _____ types? Meaning?
// A: Reference - creating a new class instance from a prior creates a reference to the same class

// Check if two references refer to the same class instance
samsung === iPhone




