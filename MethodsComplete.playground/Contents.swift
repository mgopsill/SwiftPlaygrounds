//: Playground - noun: a place where people can play

import UIKit

// Create a counter class that has a method to increment by one
// a method to increment by a number
// a reset method

class Counter {
    var count = 0
    
    func increment() {
        count += 1
    }
    
    func increment(by amount: Int) {
        count = count + amount
    }
    
    func reset() {
        count = 0
    }
}

var counter = Counter()

counter.count
counter.increment()
counter.count
counter.increment(by: 20)
counter.count
counter.reset()
counter.count

// create a enumeration of a tristate switch
// it should have three states, low, high off
// and a method that switches the state from one to the next in a loop (switch)

enum TriStateSwitch {
    case off, low, high
    mutating func next(){
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}

var ovenLight = TriStateSwitch.low

ovenLight.next()
ovenLight.next()


// create a class that you can create an instance of that does nothing
// but the class itself has a variable and function that can be used

class LevelTracker {
    static var level = 0
    static func levelUp() {
        level += 1
    }
}

LevelTracker.levelUp()
print(LevelTracker.level)

