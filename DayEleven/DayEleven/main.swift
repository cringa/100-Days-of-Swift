//
//  main.swift
//  DayEleven
//
//  Created by Inga Curjos on 04.01.2021.
//

import Foundation

// 1. Protocols
protocol Identifiable {
    var id: String { get set }
}
struct User: Identifiable {
    var id: String
}
func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

struct Book {
    var name: String
}

func buy(_ book: Book2) {
    print("I'm buying \(book.name)")
}
protocol Purchaseable {
    var name: String { get set }
}
struct Book2: Purchaseable {
    var name: String
    var author: String
}

struct Movie: Purchaseable {
    var name: String
    var actors: [String]
}

struct Car: Purchaseable {
    var name: String
    var manufacturer: String
}

struct Coffee: Purchaseable {
    var name: String
    var strength: Int
}

func buy(_ item: Purchaseable) {
    print("I'm buying \(item.name)")
}

// 2. Protocol inheritance
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}
protocol Employee: Payable, NeedsTraining, HasVacation { }

// 3. Extensions
extension Int {
    func squared() -> Int {
        return self * self
    }
}
let number = 8
print(number.squared())
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

// 3. Protocol extensions
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}
pythons.summarize()
beatles.summarize()

// 4. Protocol-oriented programming
protocol Identifiable2 {
    var id: String { get set }
    func identify()
}
extension Identifiable2 {
    func identify() {
        print("My ID is \(id).")
    }
}

struct User2: Identifiable2 {
    var id: String
}

let twostraws = User(id: "twostraws")
