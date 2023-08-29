import UIKit

// Due Date : 25/08

// Interview Questions (Theory)

// 1.  What is initilizers, use with example
    // Answer: Initalizers are like constructors in which they give you a way to instantiate a class using init
    
// 2. What is protocol extension?
    // Answer: Protocol extensions add functionality to existing protocols so you can add extra features or restictions for test cases.

// 3. What is class extension?
    // Answer: Class extensions add functionality to a existing classes.

// 4. what is Type Alias?
    // Answer: Type Alias allows you to make a keyword with a existing type or types

// 5. What is storybaords behind the scenes?
    // XML

// 6. What is closure?
    // A Closure is packages of code that can be arranged to met a specific condition or job for a program.



// Codign Questoins

//1 create project which have  login Screen with userName , password fields and login button , it should work on iPhone and ipad and different Orientations
// Refer to Day 2 - P1

//2. Create project which have  Calculator Kind of UI with numbers and different operations
// Refer to Day 2 - P2

// 3. Create a closure to take firstName , lastName as param and return fullName

let employee : (String,String)-> String = {
    return $0 + " " + $1
}

var fullName = employee("Ren","Amamiya")
print(fullName)
