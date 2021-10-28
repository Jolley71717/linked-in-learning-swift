/*:
 # Swift Tuples
 ---
 
 ## Topic Essential
 In Swift, tuples can take a group of values and store them as one compound value. Unlike arrays, tuples can store values of different types, so you can mix and match as much as you need.
 
 Tuples are great for returning values from functions, and storing temporary groups of values. However, as tempting as it may be to use tuples to create and store complex data structures, it’s still a better idea to use classes and structs for that, as we’ll see later on.
 
 ### Objectives
 + Create a simple tuple named **uppercutAttack** with initial values and no value names
 + Create another tuple named **planetSmashAttack** with initial values and value names
 + Create a final tuple named **shieldStompAttack** with no initial values and a type annotation
 + Explore what tuples have to offer
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Simple tuple
var upperCutAttack: (String, Int, Bool) = ("Uppercut Smash", 25, true)
upperCutAttack.0
upperCutAttack.1
upperCutAttack.2

var (attack, damage, rechargable) = upperCutAttack

attack
damage
rechargable


// Naming tuple values
var shieldStomp: (name: String, damage: Int, rechargable: Bool)
var planetSmashAttack = (name: "Planet Smash", damage: 45, rechargable: true)
let <#name#> = <#value#>
shieldStomp.damage = 100

planetSmashAttack.rechargable

// Naming values with type annotation

