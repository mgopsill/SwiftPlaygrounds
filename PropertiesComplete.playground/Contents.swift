//: Playground - noun: a place where people can play

import UIKit

// create a structure called FixedLengthRange
// that has a variable and constant as it's properties
// then create an instant with a fixed length

struct FixedLengthRange {
    var width : Int
    let length : Int
}

var wood = FixedLengthRange(width: 2, length: 3)

// Create a class then create a class that loads that class lazily
class aClass {
    var x = 22
}

class lazee {
    lazy var thing = aClass()
}

// Q: What is a lazy property? Why would you create a lazy property?
// A: A lazy property stops the property being loaded until it is first used.
// A: It saves loading complex classes that may not be used.


//MARK: Computed Properties
// Define a structure called point with an x and y integer variable
// Define a structure called size with a height and width
// Define a structure called rect that sets origin as a point, size as a size
// and centre as a point with getters and setters
// the get would return the origin x + width / 2, and origin y + lenght / 2 and return it as a point
// the set would take a newCenter point and set the origin to the new x - width /2 and same for y
struct Point {
    var x = 0
    var y = 0
}
struct Size {
    var width = 0
    var height = 0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var centre: Point {
        get {
            let centreX = origin.x + (size.width / 2)
            let centreY = origin.y + (size.height / 2)
            return(Point(x: centreX, y: centreY))
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

// then create a new square with a point and size
// then get, and set it's centre

var square = Rect(origin: Point(x: 2, y: 2), size: Size(width: 20, height: 20))
print(square.centre)
square.centre = Point(x: 2, y: 1)
print(square.centre)

// Define a class called stepcounter with a variable called steps
// creater observer properties that print the old and new value when steps change
// then create an instance and change the steps
class StepCounter {
    var steps : Int = 0 {
        willSet {
            print("New total steps: \(newValue)")
        }
        didSet {
            print("Old total steps: \(oldValue)")
        }
        
    }
}

var stepCount = StepCounter()
stepCount.steps = 44
stepCount.steps = 222

// Create a structure called AudioChannel
// it should have a never changing scale of 1 to 10
// there should be a variable that shows the max volume received of any instance of the structure
// finally there should be a current level value
// when set it should check the new current level - if higher than threshold, cap it
// and if currentl level is higher than the previous max volume update the max volume to new input

struct AudioChannel {
    static let max : Int = 10
    static var maxInputLevelForAllChannels : Int = 0
    var currentLevel : Int = 0 {
        didSet {
            if currentLevel > AudioChannel.max {
                currentLevel = AudioChannel.max
            }
            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
}

var volume = AudioChannel()
var volumeTwo = AudioChannel()

volume.currentLevel = 2
print(AudioChannel.maxInputLevelForAllChannels)
volumeTwo.currentLevel = 45
print(AudioChannel.maxInputLevelForAllChannels)

// Q: Static variables are only accessible to?
// A: The class itself, not instances of the class.













