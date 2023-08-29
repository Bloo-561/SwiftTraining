import UIKit

// Due Date : 24/08

// Interview Questions (Theory)

// 1. How to create mutalbe and immutable types in Swift?
    // Answer: You can create mutable types by using the "var" keyword, meanwhile you can create immutable types by using the "let" keyword
    
// 2. What is Type Safety?
    // Answer: Type Safety means that once a variable is created and defined as one type it can not be changed or set to values of another type.

// 3. What is Type Inference?
    // Answer: Type Inference is the ability that the swift compiler usews to identify what the type the variable is automatically.

// 4. How to create explict and implict variables?
    // Answer: You create a explicit variable by specifying the type with let or var and implict is not specifying it at all and letting inference occur.

// 5. What is Optionals?
    // Answer: Optionals are variables that can be nil/null.

// 6. How to do optional binding?
    // Answer: You can do optional binding by doing a Nil Coalscer, If let or Guard let.

// 7. Diff b/w if let and guard let
    // Answer: An "if let" is used to unwrap a optional value if it exist while "guard let" is used if the value doesnt exist from the start.

// 8 . What is nil coalsing operator?
    // Answer: Nil Coalsing Operator unwraps the variable if it has a value, if not then it defaults to a value defined by the operator

// 9. What is protocol?
    // Answer: A protocol is a blueprint of properties and mehtods for a class to follow.

// 10. What is class?
    // Answer: A class is a blueprint of a object.

// 11. Diff b/w Struct and Class
    // Answer: A class is a reference type while a struct is a value type so memory is stored in different ways

// 12. Diff b/w array , dict  Set
    // Answer: Arrays are ordered while Dictionaries and Sets are not, but a set can not have duplicate values while dictionaries uses indexes and value pairs.



// Codign Questoins

//1 remvoe duplicate chars from a String
    // input : "aabbccdd" : output : abcd

let alpha : String = "aabbccdd"
var set = Set<Character>()
let filter = alpha.filter {
    set.insert($0).inserted
}

print(filter)

// 2. remove duplidate elemetn from an array
    
    // input : [1,2,2,3,4,7,5,5]
    // output = [1,2,3,4,7]

func removeNumbers(arr: [Int])-> [Int] {
    var setN : [Int] = []
    for x in arr {
        if !setN.contains(x) {
            setN.append(x)
        }
    }
    return setN
}

let array = [1,2,2,3,4,7,5,5]
print(removeNumbers(arr: array))



// 3. Create a class of Student with 4 attributes and 3 actions

class Student {
    var name : String = ""
    var age : Int = 0
    var major : String = ""
    var expectedGrad : Int = 0
    
    func timeSchedule() {
        
    }
    
    func foodPlanBalance() {
        
    }
    
    func gradRequirements() {
        
    }
}

// 4. create array of 10 students objects and iterate through array and print all each student name

var studentList : [Student] = []
for i in 0...9 {
    var student : Student = Student()
    student.name = "Student " + (i + 1).formatted()
    studentList.append(student)
}

for x in studentList {
    print(x.name)
}

// 5. Create Optional variable and show use of optional binding.

var possibleMovie : String? = "Barbie"

if let movie = possibleMovie {
    print(movie)
}




