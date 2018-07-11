//: Playground - noun: a place where people can play

import UIKit

// create a variable, a constant and a tuple
var x = 1
let y = 2
let (a,b) = (1,2)

// write shorthand for x = x + 1
x += 1

// --Strings--
var hello = "Hello"
var name = "Ironman"

// write an if statement that checks if name is Ironman
// if Ironman print Hello Ironman with string concatenation
// else print Hello playerunknown with string interpolation
if name == "Ironman" {
    print(hello + " " + name)
} else {
    print("\(hello) playerunknown")
}

// declare a tuple with an Int and String
var (num, text) = (1, "cat")

// compare the above tuple with other tuples so that the above tuple
// is greater than, less than and equal to the other tuples
(num, text) < (2, "pat")
(num, text) > (0, "hat")
(num, text) == (1, "cat")

// --Vars--
let hasHeader = false
var height = 0

// use the ternary conditional operater to check if hasHeader is true
// height is 50, else it's 20
height = hasHeader ? 50 : 20

// --Vars--
let defaultColorName = "red"
var userDefinedColorName: String?  // defaults to nil

// write a var called colorNameToUse that uses the nil-coalescing operator
// and sets colorNametoUse to the userDefinedColorName if is available else set
// colorNametoUse to defaultColorName
var colorNameToUse = userDefinedColorName ?? defaultColorName

// write for loops that loop from:
//      1 to 5 using a closed range operator
//      1 to 4 using a half-open range operator

for num in 1...5 {
    print(num)
}

for num in 1..<5 {
    print(num)
}

// create an array of Ints from 1 to 5
// loop from 3 to 5 using a one-sided range operator

var numArray = [1,2,3,4,5]
for num in numArray[2...]{
    print(num)
}

// ---Vars---
let enteredDoorCode = true
let passedRetinaScan = false
let hasDoorKey = false
let knowsOverridePassword = true

// check if the enteredDoorCode and passedRetinaScan are true
// or hasDoorKey or knowsOverridePassword are true and print Welcome if so
// else print No Entry
if (enteredDoorCode ?? passedRetinaScan ) || hasDoorKey || knowsOverridePassword {
    print("Welcome")
} else {
    print("No Entry")
}

