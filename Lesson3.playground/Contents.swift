import UIKit

//MARK: Collections
//1. Array
let arrayOfStrings: [String] = ["aad", "bbnm", "ch", "ss", "afg"]
let arrayOfStrings2 = ["v", "c", "x"]
print(arrayOfStrings[3])

let arrayOfCharacters: [Character] = ["a", "b", "c", "s", "a"]

//var arrayOfIntegers: [Int] = []
var arrayOfIntegers = [Int]()

arrayOfIntegers = [1, 2, 3, 4, 5, 6]
print("1: ", arrayOfIntegers)
arrayOfIntegers = [11, 22, 33, 44, 55, 66]
print("2: ", arrayOfIntegers)
arrayOfIntegers += [0, 9]
print("3: ", arrayOfIntegers)
arrayOfIntegers.append(77)
print("4: ", arrayOfIntegers)
arrayOfIntegers.insert(23, at: 2)
print("5: ", arrayOfIntegers)
type(of: arrayOfIntegers)
let someArrayOfInt = [97, 98]
var intArr = arrayOfIntegers + someArrayOfInt
print(intArr)
intArr.count

intArr[3] = 11
print(intArr)

print(intArr.isEmpty)
//intArr.removeAll()
if !intArr.isEmpty{
    print(intArr)
} else {
    print("Is empty")
}

intArr.remove(at: 3)
print(intArr)

var newArrayOfStrings = ["me", "you"]
var oldArrayOfStrings = ["he", "she"]
var both = newArrayOfStrings + oldArrayOfStrings
print(both)

both += ["new"]
print(both)



//2. Set

let setOfStrings: Set = ["a", "b", "c", "s", "a"]
print(setOfStrings)
setOfStrings.contains("b")
setOfStrings.sorted(by: >)
print(setOfStrings)

var setOfCharacters: Set<Character> = []
setOfCharacters = ["d"]
setOfCharacters.insert("r")
print(setOfCharacters)
setOfCharacters = []
print(setOfCharacters)
type(of: setOfCharacters)



//3. Dictionaries

var someStringDictionary = Dictionary<String, String>()

var moreStringIntDictionary = [String: Int]()

var stringDictionary: [String: String] = [:]

stringDictionary = ["name"      : "AM",
                    "age"       : "34",
                    "webLink"   : "la.lv"]
print(stringDictionary)

stringDictionary["email"] = "a@a.com"
print(stringDictionary)

stringDictionary["email1"]
print(stringDictionary)

stringDictionary["name"] = "Arta"
print(stringDictionary)

stringDictionary.count
stringDictionary.updateValue("b@b.com", forKey: "email")
print(stringDictionary)
stringDictionary.removeValue(forKey: "email")
print(stringDictionary)

stringDictionary["age"] = nil
print(stringDictionary)



//MARK: For Loop

print("1 x 10 = \(1 * 10)")
print("2 x 10 = \(2 * 10)")
print("3 x 10 = \(3 * 10)")
print("4 x 10 = \(4 * 10)")
print("5 x 10 = \(5 * 10)")
print("6 x 10 = \(6 * 10)")


for i in 1...10 {
    print("\(i) * 10 = \(i * 10)")
}

//#warning("I do not need this i")
for _ in 1...10 {
    print("Hello")
}

let apples = ["red apple", "red apple", "red apple", "green apple"]
type(of: apples)
var basket = 0
for apple in apples{
    if apple == "red apple"{
        basket += 1
    }
}
print("I have \(basket) red apples in my basket")

let numberOfLegs = ["spider" : 8,
                    "dog"    : 4,
                    "ant"    :6
]

for (animalName, legsCount) in numberOfLegs {
    print("\(animalName) has \(legsCount) legs")
}

let someText = "Swift"
for char in someText {
    print(char)
}



//MARK: While Loop

var count = 5
while count > 0 {
    print("Countdown: \(count)")
    count -= 1
}

var counter = 1
while true {
    print("Counter is now: \(counter)")
    counter += 1
    
    if counter == 20 {
        break
    }
}












