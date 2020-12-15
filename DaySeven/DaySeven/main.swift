//
//  main.swift
//  DaySeven
//
//  Created by Inga Curjos on 15.12.2020.
//

import Foundation

// 1. Using closures as parameters when they accept parameters
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}
travel { (place: String) in
    print("I'm going to \(place) in my car")
}
let changeSpeed = { (speed: Int) in
    print("Changing speed to \(speed)kph")
}
func buildCar(name: String, engine: (Int) -> Void) {
    // build the car
}

// 2. Using closures as parameters when they return values
func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let changeSpeed1 = { (speed: Int) in
    print("Changing speed to \(speed)kph")
}
func buildCar1(name: String, engine: (Int) -> Void) {
    // build the car
}

// 3. Shorthand parameter names
func travel1(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
travel1 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
travel { place -> String in
    return "I'm going to \(place) in my car"
}
travel { place in
    return "I'm going to \(place) in my car"
}
travel { place in
    "I'm going to \(place) in my car"
}
travel {
    "I'm going to \($0) in my car"
}

// 4. Closures with multiple parameters
func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}
travel {
    "I'm going to \($0) at \($1) miles per hour."
}

// 5. Returning closures from functions
func travel3() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
let result3 = travel3()
result3("London")
// let result4 = travel()("London") - bad idea
print(Int.random(in: 1...10))

func getRandomNumber()-> Int {
    Int.random(in: 1...10)
}
print(getRandomNumber())

func makeRandomGenerator() -> () -> Int {
    let function = { Int.random(in: 1...10) }
    return function
}

let generator = makeRandomGenerator()
let random1 = generator()
print(random1)

// 6. Capturing values
func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
let result6 = travel6()
result6("London")

func travel6() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
result6("London")
result6("London")
result6("London")

