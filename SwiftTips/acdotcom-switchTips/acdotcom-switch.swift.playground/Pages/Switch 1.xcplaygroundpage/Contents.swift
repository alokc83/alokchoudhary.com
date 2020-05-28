//Status published 

import Foundation

func simpleSwitch() {
    let name = "Ironman"
    switch name {
        case "Spiderman":  print("Hello, Peter Parker")
        case "Ironman": print("Hello, Tony Stark")
        default: print("who are you?")
    }
}

simpleSwitch()

func comparingMoreThanOneValue() {
    let name = "Ironman"
    let pass = "jarvis"
    switch (name, pass)  {
        case ("Spiderman",  "park3r"):  print("Hello, Peter Parker")
        case ("Ironman", "jarvis"): print("Hello, Tony Stark")
        default: print("who are you?")
    }
}

comparingMoreThanOneValue()

func switchWithTuple() {
    let authentication = (name: "Spiderman", pass: "park3r")
    switch authentication  {
        case ("Spiderman",  "park3r"):  print("Hello, Peter Parker")
        case ("Ironman", "jarvis"): print("Hello, Tony Stark")
        default: print("who are you?")
    }
}

switchWithTuple()

func partialMatchingWithTuple() {
    let authentication = (name: "Ironman", pass: "jarvis", hostIp: "227.89.94.62")
    switch authentication  {
        case ("Spiderman",  "park3r", _):  print("Hello, Peter Parker")
        case ("Ironman", "jarvis", _): print("Hello, Tony Stark")
        default: print("who are you?")
    }
}

partialMatchingWithTuple()

//Always remember swift picks up the first match not better match. If case (, _, ) are in above example at the top. It would be picked.

//If you like to know other parts of tuple but keep them out of matching. You should use let syntax

// Note: Swift will take the first matching case it finds, so you need to ensure you look for the most specific things first.

func checkOtherPartsOfTuple() {
    let authentication = (name: "Ironman", pass: "jarvis", hostIp: "227.89.94.62")
    switch authentication  {
        case ("Spiderman",  "park3r", _):  print("Hello, Peter Parker")
        case ("Ironman", let pass, _): print("Hello, Tony Stark. Password was \(pass)")
        case (_, _, _): print("Why so myterious")
        default: print("who are you?") // Though this would not be executed as case above would be executed. Please see note
    }
}

checkOtherPartsOfTuple()

/// Matching Calculated Tuples
func matchingCalculatedTuples(number: Int) -> String {
    switch (number % 3 == 0, number % 5 == 0) {
    case (true, false):
        return "Foo"
    case (false, true):
        return "Bar"
    case (true, true):
        return "FooBar"
    case (false, false):
        return String(number)
    }
}

let result = matchingCalculatedTuples(number: 13)
let result2 = matchingCalculatedTuples(number: 130)
let result3 = matchingCalculatedTuples(number: 30)
let result4 = matchingCalculatedTuples(number: 27)

print(result)
print(result2)
print(result3)
print(result4)

