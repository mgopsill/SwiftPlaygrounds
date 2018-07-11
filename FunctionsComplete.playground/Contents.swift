//: Playground - noun: a place where people can play

import UIKit

// Create a function that takes a string an returns Hello + String and call it
func greeting(name: String) -> String {
    return "Hello " + name
}

greeting(name: "Steve")

// Create a function that does the same as above
// but also takes a boolean as a parameter
// and returns Hello name if true, else return Hello unknown
// call it

func greetingCheck(name: String, check: Bool) -> String{
    if check {
        return "Hello " + name
    }
    return "Hello unknown "
}

greetingCheck(name: "Steve", check: true)

// Create a function that takes an Int
// and returns it times 2 and times 4
// call it
func twoAndFour(x: Int) -> (two: Int, four: Int) {
    let timesTwo = x * 2
    let timesFour = x * 4
    return (timesTwo, timesFour)
}

twoAndFour(x: 22)

// Create the same function as above
// but return an optional tuple
// add an if statement that only returns nil if the provided int is over 20
// call the function with optional binding and print the return
func twoAndFourOptional(x: Int) -> (two: Int, four: Int)? {
    if x > 20 {return nil}
    let timesTwo = x * 2
    let timesFour = x * 4
    return (timesTwo, timesFour)
}

if let didReceiveNumber = twoAndFourOptional(x: 2){
    print(didReceiveNumber)
}

// Write a function that takes takes a string and returns Hello + string
// but specify an argument label ... call it
func helloPlus(iamalabel homeTown:String) -> String {
    return "Hello + \(homeTown)"
}

helloPlus(iamalabel: "S")

// Write the above function again but allow no argument label ... call it
func helloNew(_ name:String) -> String {
    return "Hello + \(name)"
}

helloNew("Ironman")

// Write the above function again but with a default string provided
func helloNewDefault(_ name: String = "Default") -> String {
    return "Hello + \(name)"
}

helloNewDefault()

// Write a function that takes a bunch of numbers
// and returns the average of the numbers
func average(_ numbers: Int...) -> Int {
    var total = 0
    var count = 0
    for number in numbers {
        total += number
        count += 1
    }
    return total / count
}

average(2, 4)

// Write a function that takes two ints and swaps them
// but doesn't return them, it literally swaps them ... call it
func swap(_ a: inout Int, _ b: inout Int){
    let tempA = a
    a = b
    b = tempA
}

var first = 1
var last = 2
swap(&first, &last)

//MARK: Function types

// Create a function that takes to Ints and returns the sum of the Ints
func addToInts(_ a : Int, _ b : Int) -> Int {
    return a + b
}

// Create a variable of the same function type as above and assign it to the function
// use the new variable name to call the function
var mathAdd : (Int, Int) -> Int = addToInts
print(mathAdd(2,3))

// Do the same as above but let swift infer type
var mathAlsoAdd = addToInts
print(mathAlsoAdd(2,44))

// Using one of the add functions above, create a new function
// that takes the same function type, 2 ints and returns the result of the passed function
func mathFunction(mathFunction: (Int,Int) -> Int, _ a : Int, _ b : Int) {
    print(mathFunction(a,b))
}

mathFunction(mathFunction: mathAdd, 2, 1)

// Write two functions, one that takes an Int and adds one, one that minuses one
// create a function that takes a boolean and returns a function
// the function should return add one if true, and minus one if false
// assign the function to a variable and use it
func addOne(_ input: Int) -> Int {
    return input + 1
}

func minusOne(_ input: Int) -> Int {
    return input - 1
}

func chooseAdd(_ input: Bool) -> (Int) -> Int {
    return input ? addOne : minusOne
}




