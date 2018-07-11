//: Playground - noun: a place where people can play

import UIKit

//MARK: Arrays

// create an empty array of ints using 2 different methods
var first : [Int] = []
var second = [Int]()

// append an int to an array
first.append(1)

// create an array with 3 of the same float twice, then combine them
var o = Array(repeating: 0.1, count: 3)
var i = Array(repeating: 1.1, count: 3)
var x = o + i

// create an array of strings
var arr = ["First", "Second"]

// add to an array of strings without using append
arr += ["Third", "Fourth"]

// check if an array is empty
// access an element in an array
// insert an element into the middle of an array
// remove an element in the middle of an array
arr.isEmpty
arr[2]
arr.insert("Wildcard", at: 2)
arr.remove(at: 2)

// iterate over an array
// iterate over an array and print the indices too
for x in arr {
    print(x)
}

for (x, y) in arr.enumerated() {
    print("\(x) : \(y)")
}


//MARK: Sets

// Q: When is a set useful?
// A: When you don't need the order of items and you can't have the same item twice

// create an empty set of characters, add characters
var mySet = Set<Character>()
mySet.insert("c")

// instantiate a set with String literals, don't let Swift infer type
// do the same with a different data type and let Swift infer type
var myStrings : Set<String> = ["What","Is","This"]
var myFloats : Set = [1,2,3,4,5]

// check how many things in a set, remove something, check if the set contains something
myStrings.count
myStrings.remove("Is")
myFloats.contains(2)

// iterate throught a set in order
for flo in myFloats.sorted() {
    print(flo)
}

// create 2 sets, find numbers common to both sets, then join the sets
// remove any numbers in 1 set from the other
// check if all of a set are in another set, check if a set contains all of another set
// find out if a set has nothing in common with another set
var low : Set = [1,2]
var mid : Set = [3,4]

low.union(mid)
low.intersection(mid)
low.subtracting(mid)
low.isSubset(of: mid)
low.isSuperset(of: mid)
low.isDisjoint(with: mid)

//MARK: Dictionaries

// create an empty dictionary with Ints as keys and Strings as values
var myDictionary = [Int:String]()

// add a value to the dictionary
myDictionary[1] = "I am One"

// Instantiate a dictionary with values without inferring type, then inferring type
var myOne : [Int:String] = [1:"Yes",2:"No",3:"Maybe"]
var myTwo = ["a": 001, "b": 002]

// check if a dictionary is not empty, if not return an item from the dictionary
if !myOne.isEmpty {
    print(myOne[1]!)
}

// there a two ways to update a dictionary variable, use them
// one returns the old value, assign that to a new variable
myOne[3] = "Definitely Maybe"
let old = myOne.updateValue("Perhaps", forKey: 3)

// remove a value from an array
myOne.removeValue(forKey: 2)

// iterate through an array printing the keys and values
// then the keys only then the values only
for (k, v) in myTwo {
    print(k + String(v))
}


for k in myOne.keys {
    print(k)
}

for v in myOne.values {
    print(v)
}

// create a new array from just the keys of a dictionary
var attempt = [String](myOne.keys)

