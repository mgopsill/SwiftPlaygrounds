//: Playground - noun: a place where people can play

import UIKit

// Create an array of strings / names
var names = ["Ironman","Thor","Hulk","Batman","Superman"]

// Create a function called backwards that takes two strings, compares whether one
// is greater than the other and returns a bool
// then pass that function to sorted to sort the array
func backwards(_ a: String, _ b: String) -> Bool {
    return a > b
}
names.sorted(by: backwards)

// Create an empty array of strings
// Rather than passing backwards to sorted by
// pass a closure that does the same and assign it to the var
var reversedNames = [String]()
reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
    })
print(reversedNames)

// The closure you wrote defines data types
// but Swift can infer these types due to sorted(by:) knowing what
// it is being called on. The by tells it you are passing a function.
// So repeat the above with less code

reversedNames = names.sorted(by: {(s1, s2) in return s1 > s2})
print(reversedNames)

// If you only have a single-expression what else can you remove
// remove it below
reversedNames = names.sorted(by: {(s1, s2) in s1 > s2})

// Finally, an inline closure allows for shorthand for arguments
// Use it  to reduce the duplication
reversedNames = names.sorted(by: {$0 > $1})

// Just for fun, can you simplify this further
reversedNames = names.sorted(by: >)

// goal is to allow for the  the below
// let incrementBySeven = makeIncrementer(forIncrement: 7)
// incrementBySeven()
// returns a value of 7
// incrementBySeven() // returns 14
func makeIncrementer(forIncrement: Int) -> () -> Int {
    var total = 0
    func increment() -> Int{
        total += forIncrement
        return total
    }
    return increment
}

let incrementBySeven = makeIncrementer(forIncrement: 7)
print(incrementBySeven())
print(incrementBySeven())

let incrementByTen = makeIncrementer(forIncrement: 10)
print(incrementByTen())
print(incrementByTen())

// Q: Closures are _____ types
// A: Reference


