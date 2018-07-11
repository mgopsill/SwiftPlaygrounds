//: Playground - noun: a place where people can play

import UIKit

// Create a structure called Fahrenheit
// It should have a variable of temperature with type double
// and an initialization method that sets temp to 32

struct Fahrenheit {
    var temperature: Double
    init() {
        temperature = 32
    }
}

var f = Fahrenheit()
print("The default temperature is \(f.temperature)° Fahrenheit")

// Create a structure called celsius
// it should have a variable called temperatureInCelsius that is a double
// create two initialisation methods, one that takes fahrenheight
// and converts it to celsius (num - 32) / 1.8
// one that takes kelvin and converts it to celsius (-273.15)

struct Celsius {
    var temperatureInCelsius : Double
    init(fromFahrenheit:Double) {
        temperatureInCelsius = (fromFahrenheit - 32) / 1.8
    }
    init(fromKelvin:Double) {
        temperatureInCelsius = fromKelvin - 273.15
    }
}

let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
let freezingPointOfWater = Celsius(fromKelvin: 273.15)

// Create a class called Question
// Include a question text variable and answer text optional variable
// Add an initialisation method that allows creation of a question

class Question {
    var questionText : String
    var responseText : String?
    init(_ question: String){
        questionText = question
    }
}

let questionA = Question("What time is it?")
print(questionA.questionText)

// Create a class called vehicle that has variable numberofwheels
// and a method that prints wheels = that var
// then create a inheriting class of type bike
// that overrides the car init and changes the wheels assingment to two
class Vehicle {
    var numOfWheels = 0
    func wheels() {
        print("Wheels: \(numOfWheels)")
    }
}

class Bike : Vehicle {
    override init() {
        super.init()
        numOfWheels = 2
    }
}

var myVehicle = Vehicle()
var myBike = Bike()
myVehicle.wheels()
myBike.wheels()

// Create a class called Food that has a variable called name
// Name is a String
// add a initialisation method that takes a string and assigns it to name
// add another initialiser to cover if a string isn't included it should call the above method
class Food {
    var name: String
    init(name: String){
        self.name = name
    }
    convenience init(){
        self.init(name: "No Name Provided")
    }
}

var banana = Food(name: "Banana")
var cake = Food()
print(banana.name)
print(cake.name)


// Create a struct for animal that has a constant set to species
// Create a initialiser that takes a string and assigns it to species
// if no string is available initialisation should fail

struct Animal {
    let species : String
    init?(species: String){
        if species.isEmpty { return nil }
            self.species = species
    }
}

var cat = Animal(species: "Cat")
var nanimal = Animal(species: "")

// Write a class that has an initialisation method that all subclasses must use
class Computer {
    var name: String
    required init(name: String) {
        self.name = name
    }
}

class Apple : Computer {

}

var windows = Computer(name: "Windows")
var apple = Apple(name: "Apple")
