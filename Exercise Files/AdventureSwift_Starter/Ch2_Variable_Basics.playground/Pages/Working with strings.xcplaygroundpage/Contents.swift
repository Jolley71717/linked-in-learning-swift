/*:
 # Working with Strings
 ---
 
 ## Topic Essentials
 There are several `String` methods that you'll be using on a regular basis, which include `contains`, `append`, `insert`, `remove`, and `split`. Refer to the documentation to see everything the `String` class offers.
 
 ### Objectives
 + Retrieve state information about a string using `count` and `isEmpty`
 + Use each of the mentioned class methods to alter the starting string
 
  [Previous Topic](@previous)                                                 [Next Topic](@next)
 
 */
// Test variable
var dialoge = "the inkeepers haven"

// String data
dialoge.isEmpty
dialoge.count
dialoge.contains("s")


// Append and Insert
dialoge.append(contentsOf: ", weary travelers!")
dialoge.removeLast()

// Remove and Split
print(dialoge)

