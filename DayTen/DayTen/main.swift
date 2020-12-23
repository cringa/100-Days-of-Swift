//
//  main.swift
//  DayTen
//
//  Created by Inga Curjos on 23.12.2020.
//

import Foundation

// 1. Creating your own classes
class Dog{
    var name : String
    var breed : String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Tuzic", breed: "Poodle")

// 2. Class inheritance
class Poodle: Dog{
     init(name: String){
        super.init(name: name, breed: "Poodle")
    }
}

// 3. Overriding methods
class Dog2 {
    func makeNoise() {
        print("Woof!")
    }
}
class Poodle2: Dog2 {
}

let poppy2 = Poodle2()
poppy2.makeNoise()

class Poodle3: Dog {
     func makeNoise() {
        print("Yip!")
    }
}

// 4. Final classes
final class Dog4 {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
 
// 5. Copying objects
class Singer {
    var name = "Taylor Swift"
}
var singer = Singer()
print(singer.name)
var singerCopy = singer
singerCopy.name = "Justin Bieber"

print(singer.name)

struct Singer2 {
    var name = "Taylor Swift"
}

// 6. Deinitializers
class Person {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}


// 7.
class Singer7 {
    var name = "Taylor Swift"
}

let taylor = Singer()
taylor.name = "Ed Sheeran"
print(taylor.name)

class Singer8 {
    let name = "Taylor Swift"
}
