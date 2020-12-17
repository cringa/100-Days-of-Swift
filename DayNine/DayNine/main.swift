//
//  main.swift
//  DayNine
//
//  Created by Inga Curjos on 17.12.2020.
//

import Foundation

// 1. Initializers
struct User {
    var username : String
}
var user = User(username: "Johnny")

struct User1 {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}
var user1 = User1()
user.username = "Johnny"

// 2. Referring to the current instance
struct Person {
    var name : String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

// 3. Lazy proprieties
struct FamilyTree {
    init(){
        print("Creating family tree!")
    }
}

struct Person2{
    var name : String
 //   var familyTree = FamilyTree()
    lazy var familyTree = FamilyTree()

    init(name: String){
        self.name = name
    }
}

var inga = Person2(name: "Inga")
print(inga.familyTree)

// 4. Static proprieties and methods
struct Student {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

let tolea  = Student(name: "Tolea")
let leonea = Student(name: "Leonid")

struct Employee {
    static var staffSize = 0
    var name : String
    
    init(name: String){
        self.name = name
        Employee.staffSize += 1
    }
}
print(Employee.staffSize)

// 5. Access control

struct Person5 {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func identity() -> String {
        return "My social security number is \(id)"
    }
}
let silvia = Person5(id: "12345")


