//: Playground - noun: a place where people can play

import UIKit

// create a String Literal
var str = "A Literal String"

// create a multi-line String
var bigStr = """
A Long
String
"""

// create an empty string then check if it's empty
var emptyString = ""
emptyString.isEmpty

// loop through a string and print its characters
for char in str {
    print(char)
}

// declare a variable of data type character
var iAmAChar: Character = "X"

// create an array of characters
// pass the array to a string initialiser to create strings
var charArray: [Character] = ["C","a","t"]
var newStr = String(charArray)

// append a character to a string
newStr.append("!")

// access the number of characters in a string
newStr.count

// Q: Why aren't strings countabled by indices?
// A: because characters take up different amounts of memory

// create a string called greeting with the word "Guten Tag!"
// access the first character, last character, second character
// then create a constant called index, give it the index at the letter a
var greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]
let index = greeting[greeting.index(greeting.startIndex, offsetBy: 7)]

// loop through a string by using the indices
for index in greeting.indices {
    print(greeting[index])
}

// check if two strings are equal to each other
emptyString == greeting

// check if a string has a particular prefix or suffix
if newStr.hasPrefix("Ca") || str.hasSuffix("xxx") {
    print("true")
}


