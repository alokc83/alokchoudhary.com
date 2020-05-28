
// /////////////////////////////////////////////////////////
/// keyword `guard`
// Status: Unpublished
// /////////////////////////////////////////////////////////


// **Early return**
// Easiest and simplest use of guard is early return

func earlyReturn_nextIronmanIs(name: String) {
    print("\n-----------Result for function \(#function) -----------")
    
    guard name != "Mysterio" else {
     print("No way!")
     return
     }
     print("Congratulations, \(name)!")
}

earlyReturn_nextIronmanIs(name: "falcon")
earlyReturn_nextIronmanIs(name: "Mysterio")

/// **This Can be done with if-else but guard is more elegent solution for this👆🏽 kind of situations**

/// **Nil Checking**

func nilChecking_nextIronMan(name: String?) {
    print("\n-----------Result for function \(#function) -----------")
    
    guard let nextIronMan = name else {
        print("Name is required!")
        return
     }
     print("Congratulations, \(nextIronMan)!")
}

nilChecking_nextIronMan(name: nil)
nilChecking_nextIronMan(name: "Spiderman")

/// Even though `guard` mostly use  in cases above. But guard is actually let you exit any scope
/// if precondition fails not just functions and methods but also `switch`blocks and loops.
/// content of scope is only executed when preconditions are true

func moreUseOfGuard(endNumber: Int) {
    print("\n-----------Result for function \(#function) -----------")
    
    for number in 1...endNumber {
        guard number % 13 == 0 else { continue }
        print(number)
    }
}

moreUseOfGuard(endNumber: 49)
