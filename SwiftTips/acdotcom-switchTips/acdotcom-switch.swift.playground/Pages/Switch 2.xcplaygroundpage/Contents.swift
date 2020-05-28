
// /////////////////////////////////////////////////////////
// Switch 2
// Staus: Unpublished 
// /////////////////////////////////////////////////////////

import Foundation
import UIKit

// Matching Optionals 1
// Keywords here are .some and .none
// From Apple Doc
//case some(Wrapped)
// case none : in code, the absence of a value is typically written using the nil literal rather than the explicit .none enumeration case.

func matchingOptional_One() {
    let name: String? = "Iron"
    let password: String? = "Spid3r"
    switch (name, password) {
    case let (.some(ExpectedName), .some(ExpectedPassword)):
        print("Hello, \(ExpectedName)")
    case let (.some(ExpectedName), .none):
        print("\(ExpectedName), Please enter a password.")
    default:
        print("Who are you?")
    }
}

matchingOptional_One()

/// Matching Optionals 2
//  Question marks work in a similar way as optional chaining
func matchingOptional_Two() {
    let name: String? = "Venom"
    let password: String? = "Spid3r"
    switch (name, password) {
    case let (expectedName?, expectedPassword?):
        print("Hello, \(expectedName)")
    case let (expectedName?, .none):
        print("\(expectedName), Please enter a password.")
    default:
        print("Who are you?")
    }
}

matchingOptional_Two()

// Using range operators for matching
func usingRangeToMatch() {
    let year = 1983
    switch year {
    case 1920 ..< 1980:
     print("You are too old")
    case 1983 ..< 2001:
     print("You are having the best time of your life")
    default:
     print("Go back to study")
    }
}

usingRangeToMatch()

/// Matching enum
func matchingEnum() {

    enum DoorState {
        case open
        case close
        case ajar
    }

    let state = DoorState.close

    switch state {
        case .open: print("Door is open.")
        case .close: print("Door is close")
        case .ajar: print("Door is ajar")
    }

}

matchingEnum()

/// Matching enum and Associated values with `where`

func matchingEnumWithAssociatedValue() {

    enum CarState {
        case running(speed: Int)
        case stopped
        case idling
    }

    let current = CarState.running(speed: 90)

    switch current {
        case .running(let speed) where speed < 10:
            print("Speed: \(speed). Push the gas paddle man")
        case .running(let speed) where speed < 50:
            print("Speed: \(speed). We are cruzing :)")
        case .running(let speed) where speed < 100:
            print("Speed: \(speed). Yeah, now we are talking.")
        case .stopped:
            print("Car is stopped")
        case .idling:
            print("Car is idling")
        default: print("it's an error")
    }

}

matchingEnumWithAssociatedValue()

/// Matching enum and Associated values with `where`

func matchingEnumWithAssociatedValueWithWhereRange() {

    enum CarState {
        case running(speed: Int)
        case stopped
        case idling
    }

    let current = CarState.running(speed: 45)

    switch current {
    case .running(let speed) where (0...10).contains(speed):
            print("Speed: \(speed). Push the gas paddle man")
        case .running(let speed) where (11...49).contains(speed):
            print("Speed: \(speed). We are cruzing :)")
        case .running(let speed) where (50...90).contains(speed):
            print("Speed: \(speed). Yeah, now we are talking.")
        case .stopped:
            print("Car is stopped")
        case .idling:
            print("Car is idling")
        default: print("it's an error")
    }

}

matchingEnumWithAssociatedValueWithWhereRange()


// Matching Types
/// `is` a keyword and can be used  as pattern matching in switch and loops.

func usingIsForPatternMatching() {
    let view: Any = UISwitch()
    switch view {
        case is UIButton:
            print("It is a button")
        
        case is UISwitch:
                print("It is a switch")
        
        case is UILabel:
            print("It is a label")
        
        case is UIView:
            print("It is a view")

        default:
            print("No, View? Lo siento.")
    }
}

usingIsForPatternMatching()


// Note: Switch alway take the first matching case and `is` return if an object is a specific type or one of its parent classes.
// if UIView is first case, then for every UIKit object it would return "It is a view becaues everything is a view.
