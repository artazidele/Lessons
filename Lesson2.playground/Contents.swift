import UIKit

//MARK: IF ELSE

var myNumber = 10
if myNumber < 4 {
    print("True1")
}
if myNumber < 4 && myNumber < 0{
    print("True2.1")
} else if myNumber < 8 {
    print("True2.2")
} else {
    print("False2")
}

var a = 1
var b = 1

if a < 4 && b < 4{
    print("True3.1")
} else if a == 10{
    print("True3.2")
} else {
    print("False3")
}

//MARK: SWITCH
let letter = "C"

switch letter {
case "a", "A":
    print("Our letter is a")
case "b", "B":
    print ("Our letter is b")
case "c", "C":
    print("Our letter is c")
default:
    print("no idea")
}

let planetCount = 8
var countExpresion = ""
switch planetCount {
case 0:
    countExpresion = "none"
case 1:
    countExpresion = "one"
case 1...4:
    countExpresion = "a few"
case 5...11:
    countExpresion = "several"
case 12...99:
    countExpresion = "dozens of"
default:
    countExpresion = "?????"
}

print("There are \(countExpresion) known planets!")

let color = "red"
let number = 3
switch color{
case "red" where number == 3:
    print("red")
case "green" where number == 1:
    print("green")
case "black" where number == 3:
    print("black")
default:
    break
}

//MARK: OPTIONALS

var someString = ""
var anotherString: String
var stringNumber = "123"
var convertToInt = Int(stringNumber)

print(convertToInt)

if convertToInt == nil {
    print("convertToInt does not contains any value")
} else {
    print("convertToInt: ", convertToInt as Any)
}

let optionalString: String? = "100"
if let string = optionalString, let myInt = Int(string){
    print("Int: \(myInt)")
}






