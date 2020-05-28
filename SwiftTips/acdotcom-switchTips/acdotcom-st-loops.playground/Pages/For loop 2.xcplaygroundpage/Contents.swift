
// /////////////////////////////////////////////////////////
// For Loops 2
// Status: unpublished 
// /////////////////////////////////////////////////////////

import Foundation

/// Use of .some in For loop with `for case let`

func usingForCaseLet() {
    print("\n-----------Result for function \(#function) -----------")
    // .some
    let data: [Any?] = ["IronMan", nil, 1989, "SpiderMan#1"]
    for case let .some(element) in data {
     print(element)
    }

    // .optional
    for case let element? in data {
     print("With ? \(element)")
    }
}

usingForCaseLet()


/// Using `case let` to filter the array

func usingForCaseLetForFiltering() {
    print("\n-----------Result for function \(#function) -----------")
    enum CarState {
        case running(speed: Int)
        case stopped
        case idling
    }
    
    let runningSpeeds: [CarState] = [
                                        .running(speed: 40), .stopped,
                                        .idling, .running(speed: 90), .idling,
                                        .running(speed: 10)
                                        ]
    for case let .running(speed) in runningSpeeds {
        print("speed is \(speed)")
    }
}

usingForCaseLetForFiltering()


/*
 To give you a more useful example, you can use this approach to loop over all subviews in an
 array and filter for labels:
 for label in view.subviews where label is UILabel {
  print("Found a label with frame \(label.frame)")
 }
 Even though where ensures only UILabel objects are processed in the loop, it doesn't
 actually do any typecasting. This means if you wanted to access a label-specific property of
 label, such as its text property, you need to typecast it yourself. In this situation, using
 for case let instead is easier, as this filters and typecasts in one:
 for case let label as UILabel in view.subviews {
  print("Found a label with text \(label.text)")
 }
 
 */

