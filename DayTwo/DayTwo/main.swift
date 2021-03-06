//
//  main.swift
//  DayTwo
//
//  Created by Inga Curjos on 09.12.2020.
//

import Foundation

// 1. Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
print(beatles[1])

// 2. Sets
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "blue"])

// 3. Tuples
var name = (first: "Taylor", last: "Swift")
print(name.0)
print(name.first)

// 4. Arrays vs sets vs tuples
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
let set = Set(["aardvark", "astronaut", "azalea"])
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

// 5. Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

// 6. Dictionary default values
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]
print(favoriteIceCream["Charlotte", default: "Unknown"])

// 7. Creating empty collections
var teams = [String: String]()
teams["Paul"] = "Red"
var results = [Int]()

var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var results1 = Array<Int>()

// 8. Enumerations
let result = "failure"

let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}
let result4 = Result.failure

// 9. Enum associated values
enum Activity {
    case bored
    case running
    case talking
    case singing
}

enum Activity2 {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity2.talking(topic: "football")

// 10. Enum raw values
enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)

enum Planet2: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}



