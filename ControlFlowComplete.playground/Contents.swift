//: Playground - noun: a place where people can play

import UIKit

// Create a dictionary and iterate through it printing a string with key and value
var aDictionary = [1:"One",2:"Two",3:"Three"]
for (a,b) in aDictionary {
    print("\(a) " + b)
}

// Create an Int
// Use a loop with no variable and a range to multiple a number by 10
var num = 1
for _ in 1...10 {
    num = num * 10
    print(num)
}

// Create a loop that iterations from 0 to 60 by 5 at a time
for i in stride(from: 0, to: 60, by: 5){
    print(i)
}

// Create an int at 0, increase the int up to 10, when 10 stop the loop with a conditional
var numA = 0
while numA < 10{
    numA += 1
}

// Create an int at 1, add 2 then check if the int is less than 10, then loop until it is more than 10
var numB = 1
repeat {
    numB += 2
} while numB < 10

//MARK: Conditionals
// Create a int called HP of -1, check if HP is over 10, print OK
// if under 10 print need healing
// if under 0 print KO
var HP = -1
if HP > 10 {
    print("OK")
} else if HP > 0 {
    print("Need healing")
} else {
    print("KO")
}

// Create a character of z, then use a switch with 3 statements to check it
// Switch should print where it is in alphabet
var char: Character = "Z"
switch char {
case "a":
    print("First Letter")
case "z":
    print("Last letter")
default:
    print("Not a letter")
}

// copy the above code and make it so the switch accepts a capital Z
switch char {
case "a":
    print("First Letter")
case "z","Z":
    print("Last letter")
default:
    print("Not a letter")
}

// create a tuple of integers
// create a switch that checks a tuple of integers
// if both ints are 0 it should print origin
// if the first int is not 0 it should say first number
// if the second int is 0 it should say second number
// if not say whatever
var (x,y) =  (2,2)
switch (x,y) {
case (0,0):
    print("origin")
case (_,0):
    print("first number")
case (0,_):
    print("last number")
default:
    print("whatever")
}

// copy the above code except the original tuple
// change it so that the First number tells you the first number
// and second number tells you the second
// if both numbers exist it prints both
switch (x,y) {
case (0,0):
    print("origin")
case (let x,0):
    print("first number: \(x)")
case (0,let y):
    print("last number: \(y)")
case let (a,b):
    print(a,b)
}

// declare a integer variable
// write a switch that prints whether the number is positive or negative
// escape the default too
var numC = -1
switch numC {
case let x where x < 0:
    print("\(x) is negative")
case let y where x > 0:
    print("\(y) is positive")
default:
    break
}

// Q: what are the five contol statements?
// A: break, fallthrough, break, return, throw

// Q: What does guard do? What do you always need with a guard? Where do guards occur?
// A: it checks for a condition before running code
// A: you need an else
// A: in functions



