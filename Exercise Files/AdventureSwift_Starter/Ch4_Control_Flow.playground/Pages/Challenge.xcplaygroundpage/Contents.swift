/*:
 # Chapter Challenge: Game Logic
 ---
 ### Tasks
 1. Create two optional string variable called **lefthandWeapon** and **righthandWeapon**. Assigning them initial values is at your discretion.
 2. Use optional binding to unwrap both optionals in a single statement and debug both outcomes.
 3. Create a dictionary called **playerExp** and assign it some key-value pairs of type string and integer.
 4. Use a `for-in` loop to iterate over **playerExp** and capture the keys and values.
 5. Add a `guard` statement inside the `for-in` loop to make sure each player is at least level 1 to proceed. Don't forget to include the `continue` keyword.
 6. Use a switch statement to define the following cases:
    6a. exp is equal to 32
    6b. exp is between 200 and 500
    6c. Use value binding to store exp and check that it is greater than 500 using the `where` keyword
 
 [Previous Topic](@previous)
 
 */
// 1
var lefthandWeapon: String? = "shield"
var righthandWeapon: String? = "Gromple Porkins"

// 2
if let ltWpn = lefthandWeapon, let rWpn = righthandWeapon {
    print("Looks like i'm ready")
} else {
    print("I don't think i'm ready for this")
}

if let lftWpn = lefthandWeapon {
    print("Left hand holding \(lftWpn)")
} else {
    print("Left hand empty")
}
if let rtWpn = righthandWeapon {
    print("Right hand holding \(rtWpn)")
} else {
    print("Right hand empty")
}
// 3
var playerExp = ["terry": 32, "Jolley": 201, "robert": 0]

// 4
for (action, exp) in playerExp {
    print("Player '\(action)' is level \(exp)")
    guard exp >= 1 else {
        print("Player must have at least 1 exp to continue")
        continue
    }
    switch exp {
    case 32:
        print("exp was 32")
    case 200...500:
        print("exp was btn 200 and 500")
    case 200...500:
        print("exp was btn 200 and 500")
        case let thisExp where thisExp > 500:
            print("exp was > 500")
    default:
        print("exp was less than 200") 
    }
    
}

// 5

// 6
