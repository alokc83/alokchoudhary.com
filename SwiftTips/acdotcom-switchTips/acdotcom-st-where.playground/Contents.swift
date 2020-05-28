// /////////////////////////////////////////////////////////
/// keyword `where`
// Status: Unpublished
// /////////////////////////////////////////////////////////

import UIKit

func whereInForLoop() {
    print("\n-----------Result for function \(#function) -----------")
    let people = ["Donald Trump", "Donald Duck", "Don Cornelious", "Christopher Nolen ", "M. Night Shayamalan"]
    for person in people where !person.hasPrefix("Don") {
     print(person)
    }
}

whereInForLoop()

func whereInForLoopComplex() {
    print("\n-----------Result for function \(#function) -----------")
    let people = ["Donald Trump", "Donald Duck", "Don Cornelious", "Christopher Nolen", "M. Night Shayamalan"]
    for person in people where !person.hasPrefix("Don") && person.count > 18 {
     print(person)
    }
}

whereInForLoopComplex()

// Any condition can used to make loop sophisticated, even nil checking (!= nil) to filter.


