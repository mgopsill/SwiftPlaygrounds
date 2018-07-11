//: Playground - noun: a place where people can play

import UIKit

// define an enumeration of four compass points on four lines
enum CompassPoint: String {
    case north
    case south
    case east
    case west
}

// define an enumeration of planets on one line
enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter
}

// using the enum above create a planet called earth
// create a switch that says earth is safe but the rest are not
var earth = Planet.mercury
switch earth {
case .earth:
    print("Safe")
default:
    print("Not safe")
}

// create an enum with 2 instances of barcodes, where one barcode
// type is a tuple of 4 Ints, and is a String
// Use the enum to create two barcodes
enum Barcode {
    case numbers(Int, Int, Int, Int)
    case letters(String)
}

var barCodeX = Barcode.numbers(1, 2, 3, 4)
var barCodeY = Barcode.letters("JFKSAJ")

// Create a switch that detects the barcode type and prints it
switch barCodeY {
case let .numbers(a,b,c,d):
    print("Number code: \(a)\(b)\(c)\(d)")
case let .letters(x):
    print("String code: \(x)")
}

// add a numeric raw value to the planets and string raw value to compass point
// print a planet raw value and compass point raw value
print(Planet.jupiter.rawValue)
print(CompassPoint.east.rawValue)

// create a new variable of planet earth using a rawvalue to access it
var earthAgain = Planet(rawValue: 3)

// create a recursive enumeration of Arithmetic Expressions
// it should have a case of number (as an Int), multiply and addition
enum ArithmeticExpression {
    case number(Int)
    indirect case multiply(ArithmeticExpression,ArithmeticExpression)
    indirect case add(ArithmeticExpression,ArithmeticExpression)
}


