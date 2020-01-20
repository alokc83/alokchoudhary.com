import Foundation

func simpleSwitch() {
    let name = "Ironman"
    switch name {
        case "Spiderman":  print("Hello, Peter Parker")
        case "Ironman": print("Hello, Tony Stark")
        default: print("who are you?")
    }
}

func comparingMoreThanOneValue() {
    let name = "Ironman"
    let pass = "jarvis"
    switch (name, pass)  {
        case ("Spiderman",  "park3r"):  print("Hello, Peter Parker")
        case ("Ironman", "m#n"): print("Hello, Tony Stark")
        default: print("who are you?")
    }
}

func switchWithTuple() {
    let authentication = (name: "Ironman", pass: "jarvis")
    switch authentication  {
        case ("Spiderman",  "park3r"):  print("Hello, Peter Parker")
        case ("Ironman", "m#n"): print("Hello, Tony Stark")
        default: print("who are you?")
    }
}

func partialMatchingWithTuple() {
    let authentication = (name: "Ironman", pass: "jarvis", hostIp: "227.89.94.62")
    switch authentication  {
        case ("Spiderman",  "park3r", _):  print("Hello, Peter Parker")
        case ("Ironman", "m#n", _): print("Hello, Tony Stark")
        default: print("who are you?")
    }
}

//Always remember swift picks up the first match not better match. If case (, _, ) are in above example at the top. It would be picked.

//If you like to know other parts of tuple but keep them out of matching. You should use let syntax

func checkOtherPartsOfTuple() {
    let authentication = (name: "Ironman", pass: "jarvis", hostIp: "227.89.94.62")
    switch authentication  {
        case ("Spiderman",  "park3r", _):  print("Hello, Peter Parker")
        case ("Ironman", let pass, _): print("Hello, Tony Stark. Password was \(pass)")
        default: print("who are you?")
    }
}
