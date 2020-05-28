// /////////////////////////////////////////////////////////
/// keyword ` nil coalescing ??`
// Status: Published on feb 2, 2020
// /////////////////////////////////////////////////////////
import Foundation

func unwrappingWithOprator(input: String? = nil) {
    print("\n-----------Result for function \(#function) -----------")
    let name: String? = input
    let unwrappedName = name ?? "Unknown Entity"
    print(unwrappedName)
    // or you can
    print(name ?? "Unknown Entity")
}

unwrappingWithOprator(input: "Hulk")
unwrappingWithOprator()

func usingNilCoalescingOpratorWithTry(input urlString: String? = nil) {
    print("\n-----------Result for function \(#function) -----------")
    
    let titleText = (try? String(contentsOfFile: "hunlk.info")) ?? "Avengers assemble."
    print(titleText)
}

usingNilCoalescingOpratorWithTry()
