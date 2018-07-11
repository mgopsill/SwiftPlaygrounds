//: Playground - noun: a place where people can play

import UIKit

// Write a function that swaps two integers
func swapToInts(_ a: inout Int, _ b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}

// Now write a function that swaps anything
func swap<T>(_ a: inout T, _ b: inout T){
    let tempA = a
    a = b
    b = tempA
}

// write a structure called IntStack
// it should have a variable called items of an Array of Ints
// it should have a function called push that takes an Int
// it should append that Int to the array
// it should have a function called pop that
// removes the last item from the array

struct IntStack {
    var items = [Int]()
    mutating func push(_ item: Int){
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
}

// rewrite the above so anything could be used in the stack

struct Stack<Element> {
    var items = [Element]()
    mutating func push(_ item: Element){
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

var stack = Stack<String>()
