/*:
 # Chapter Challenge: Combat Actions
 ---
 
 ### Tasks
 1. Create an enumeration called **ActionError** that adopts the **Error** protocol with three cases - **InsufficientMP**, **OutOfRange**, and **UnknownError**
 2. Declare a function called **attackEnemy** that takes in an integer named **mp** and a double named **distance** as parameters and returns an optional boolean.
 3. Mark **attackEnemy** as a throwable function
 4. Add two guard statements - if **mp** is less than 10 throw **InsufficientMP**, if **distance** is greater than 5.89 throw **OutOfRange**
 5. If both guard statements pass, return true
 6. Use a **do-catch* statement to call **attackEnemy** and handle each error case individually
 7. Unwrap the optional return value from **attackEnemy** using an **if-let** statement
 
 [Previous Topic](@previous)
 
 */
// 1
enum ActionError: Error {
    case InsufficientMP
    case OutOfRange
    case UnknownError
}
// 2
func attackEnemy(mp: Int, distance: Double) throws -> Bool? {
    // 4
    guard mp > 10 else {
        throw ActionError.InsufficientMP
    }
    guard distance < 5.89 else {
        throw ActionError.OutOfRange
    }
    // 5
    return true
}

// 6
func propagateAttack(withMP: Int, withDistance: Double) -> Bool? {
    do {
        try attackEnemy(mp: withMP, distance: withDistance)
            print("Attack was successful? ")
        return true
    } catch ActionError.InsufficientMP {
        print("You don't have enough MP")
    } catch ActionError.OutOfRange {
        print("You are out of range for this attack")
    } catch ActionError.UnknownError {
        print("Unknown action error occurred")
    } catch {
        print("Unkown error")
    }
    return false
}

    if let attackSuccess = try? propagateAttack(withMP: 15, withDistance: 5.5) {
        print("Attack was successful? \(attackSuccess)")
    }


// 7
