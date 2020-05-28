import Foundation


// using case with if else

func usingCaseWithIfElse() {
    let year = 1983
    if case 1920 ..< 1983 = year {
     print("You are too old")
    } else if case 1983 ..< 2001 = year {
     print("You are having the best time of your life")
    } else {
     print("Go back to books, kiddo")
    }
}

usingCaseWithIfElse()

/// writing above code with containg as 1920 ..< 1983 creates the `Range`

func usingRangeWithIfElse() {
    let year = 1921
    if (0 ..< 1983).contains(year) {
     print("You are too old")
    } else if (1983 ..< 2001).contains(year) {
     print("You are having the best time of your life")
    } else {
     print("Go back to books, kiddo")
    }
}

usingRangeWithIfElse()


/// Matching enum and Associated values

enum DoorState {
    case open
    case close
    case ajar
}

let state = DoorState.close

if state == .open {
    print("Open")
} else if state == .close {
    print("Close")
}else {
    print("Ajar")
}
