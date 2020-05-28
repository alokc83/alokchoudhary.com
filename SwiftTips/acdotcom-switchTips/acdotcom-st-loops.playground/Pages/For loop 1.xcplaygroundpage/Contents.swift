
// /////////////////////////////////////////////////////////
// For Loops 2
// Status: Jan 28, 2020
// /////////////////////////////////////////////////////////

import Foundation


let ironman = (name: "Tony", password: "M#n")
let spiderman = (name: "Peter", password: "Spid3r")
let deadpool = (name: "Wade", password: "w1lls0n")
let users = [ironman, spiderman, deadpool]

func firstLoop() {
    print("\n-----------Result for function \(#function) -----------")
    //simply printing name
    for user in users {
        print(user.name)
    }
}

// Just like switch, we can user case with a tuple to match specific values inside the tuples.

func caseInLoop() {
    print("\n-----------Result for function \(#function) -----------")
    for case("Wade", "w1lls0n") in users {
        print("user Wade’s pass is w1lls0n")
    }
}

// You can also bind local constants to values of each tuple:

func bindingLocalConstants() {
    print("\n-----------Result for function \(#function) -----------")
    for case  (let name, let pass) in users {
    print("User \(name) ’s pass is \(pass)")
    }
}

//You can also rearrange it in tuple format as below:

func rearrangingInTuple() {
    print("\n-----------Result for function \(#function) -----------")
    for case let (name, pass) in users {
     print("User \(name) ’s pass is \(pass)")
    }
}


// You can also mix and match above mentioned techniques

func mixAndMatch() {
    print("\n-----------Result for function \(#function) -----------")
    for case let (name, "Spid3r") in users {
     print("User \(name) ’s pass is Spid3r")
    }
}
