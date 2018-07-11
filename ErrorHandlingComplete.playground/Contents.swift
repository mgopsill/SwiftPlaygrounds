//: Playground - noun: a place where people can play

import UIKit

// Write an enum that enumerates different error cases
// for a vending machine, one error case: insufficientFunds, should throw an Int
// invalidSelection and outOfStock are the other cases
// then write a statement to throw the error

enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}

throw VendingMachineError.insufficientFunds(coinsNeeded: 5)


// create a structure called item with variable for price and count
struct Item {
    var price: Int
    var count: Int
}

// create a class called VendingMachine
// create a var called invetory as an array of 3 items
// create a var called coinsDeposited as an int of 0
// create a method called vend, it should throw the three errors
// one error if it is an invalid selection
// one error if it is out of stock
// one error if not enough monies has been deposited
// after the function change coins deposited minus the items price
// print dispensing item
class VendingMachine {
    var inventory = [
        "Candy Bar" : Item(price: 20, count: 3),
        "Crisps" : Item(price: 15, count: 5),
        "Apple" : Item(price: 5, count: 20)
    ]
    var coinsDeposited = 0
    
    func vend(itemNamed name : String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }
        
        guard item.count > 0 else  {
            throw VendingMachineError.outOfStock
        }
        
        guard item.price <= coinsDeposited else {
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }
        
        coinsDeposited -= item.price
        
        print("Dispensing \(name)")

    }
}


// with the above created , create a new vending machine
// then use a do try catch block to print error cases

var vending = VendingMachine()
vending.coinsDeposited = 22

do {
    try vending.vend(itemNamed: "Candy Bar")
} catch VendingMachineError.invalidSelection {
    print("Invalid selection")
} catch VendingMachineError.outOfStock {
    print("Out of stock")
} catch VendingMachineError.insufficientFunds(let coinsNeeded) {
    print("Need \(coinsNeeded)")
}


