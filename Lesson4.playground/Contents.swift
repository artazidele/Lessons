import UIKit

//MARK: Function()

func addingTwoNumbers(){
    let a = 4
    let b = 5
    let c = a + b
    print("c: ", c)
}

addingTwoNumbers()
addingTwoNumbers()
addingTwoNumbers()
addingTwoNumbers()

func addingNumbers() -> Int {
    let a = 4
    let b = 15
    return a + b
}

addingNumbers()

func addingTwoNumbers(numberOne a: Int, numberTwo b: Int) -> Int {
    return a + b
}
addingTwoNumbers(numberOne: 2, numberTwo: 3)

func multiplyNumb(numberOne: Int, numberTwo: Int) -> Int {
    return numberOne * numberTwo
}
multiplyNumb(numberOne: 4, numberTwo: 15)

func multiplyNumb(_ numOne: Int, _ numTwo: Int) -> Int {
    return numOne * numTwo
}
multiplyNumb(12, 4)

func multiplyNumb(_ numOne: Int, multiply numbTwo: Int) -> Int {
    return numOne * numbTwo
}
multiplyNumb(3, multiply: 3)

func average(_ numbers: Double...) -> Double {
    var total = 0.0
    for number in numbers {
        total = total + number
    }
    return total / Double(numbers.count)
}
average(4,4,4,4,2,2,2,2)

let someValue = 5
let arrayOfNumbers = [4,6,8,2,3,8,9]
func filterNumLessThanValue(value: Int, numbers: [Int]) -> [Int] {
    var filteredNumbers: [Int] = []
    for number in numbers {
        if number < value {
            filteredNumbers.append(number)
        }
    }
    return filteredNumbers
}
filterNumLessThanValue(value: someValue, numbers: arrayOfNumbers)

func calculateDateValue(from day: Int, _ month: Int, _ year: Int) {
    let currentDate = Date()
    var dateComponents = DateComponents()
    dateComponents.day = day
    dateComponents.month = month
    dateComponents.year = year
    let userCalendar = Calendar.current
    if let calculateDate = userCalendar.date(from: dateComponents) {
        let dayPassed = userCalendar.dateComponents([.day], from: calculateDate, to: currentDate).day!
        let monthPassed = userCalendar.dateComponents([.month], from: calculateDate, to: currentDate).month!
        let yearPassed = userCalendar.dateComponents([.year], from: calculateDate, to: currentDate).year!
        
        print("\(yearPassed) years, \(monthPassed) months, \(dayPassed) days have passed since")
    }
}
calculateDateValue(from: 18, 4, 2000)




//MARK: OOP

let postTitle = "OOP"
let postText = "SomeText"
let postAuthor = "AZ"

let postTitle2 = "OOP2"
let postText2 = "SomeText2"
let postAuthor2 = "AZ2"


class Post {
    var title = ""
    var text = ""
    var author = ""
}

let firstPost = Post()
firstPost.title = "This is my first post"
firstPost.text = "This is a text for my first post."
firstPost.author = "Arta Zidele"

let secondPost = Post()
secondPost.title = "This is my second post"
secondPost.text = "This is a text for my second post."
secondPost.author = "Arta Zidele"

print("Author \(firstPost.author) has published new post \(firstPost.title), which content: \(firstPost.text)")

print("Author \(secondPost.author) has published new post \(secondPost.title), which content: \(secondPost.text)")

firstPost === secondPost

class Comment {
    var title = ""
    var text = ""
    var numberOfLikes = 20
    
    func addLikes(){
        numberOfLikes += 1
    }
}
let firstComment = Comment()
firstComment.title = "OOP"
firstComment.text = "Text of comment."
firstComment.addLikes()
firstComment.addLikes()
firstComment.addLikes()

let secondComment = Comment()
secondComment.title = "OOP2"

print("The number of likes for \(firstComment.title) is \(firstComment.numberOfLikes)")
print("The number of likes for \(secondComment.title) is \(secondComment.numberOfLikes)")

class Human {
    var name: String = ""
    var age: Int
    
    /*init() {
        
    }*/
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
        
    }
}
let person = Human(name: "Bob", age: 22)
person.age
person.name

class Human2 {
    var name = ""
    var age = 0
    
    init() {
        
    }
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
        
    }
}
let person2 = Human2(name: "Bob", age: 22)
person2.age
person2.name

let person3 = Human2()
person3.age = 33

class Player {
    var team = "NY"
    var number: Int? = 10
    var tatoo = true
    
    func description() -> String {
        if let playerNumber = number {
            return "Hello, I'm playing in \(team) and my number is \(playerNumber)"
        } else {
            return "Hello, I'm playing in \(team)!"
        }
    }
}

let playerOne = Player()
playerOne.team = "LA"
playerOne.description()

let playerTwo = Player()
playerTwo.team = "Toronto"
playerTwo.description()

var array = [Player]()
array.append(playerOne)
array.append(playerTwo)


//MARK: Inheritance

class Parent {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    func walk() {
        print("I can walk")
    }
    func eat() {
        print("I can eat")
    }
    func sleep() {
        print("I can sleep")
    }
}
let dad = Parent(name: "Sam", age: 44)
dad.name
dad.sleep()

class Child: Parent {
    func educating(){
        if age >= 3 && age <= 7 {
            print("Kindergarden age")
        } else if age < 3 {
            print("Too early for pre school education")
        } else {
            print("Too late for pre school education")
        }
    }
}

let littleBoy = Child(name: "Tom", age: 2)
littleBoy.educating()
littleBoy.age

class SchoolChild: Child {
    var student = false
}

let schoolChild = SchoolChild(name: "Tim", age: 12)
schoolChild.student = true

//MARK: Polymorphism

class Figure {
    func draw(){
        
    }
}

class Circle: Figure {
    override func draw(){
        print("Draw Circle")
    }
}

class Rectangle: Figure {
    override func draw(){
        print("Draw Rectangle")
    }
}

class Triangle: Figure {
    override func draw(){
        print("Draw Triangle")
    }
}

let triangle = Triangle()
triangle.draw()

func drawFigure(_ figure: Figure) {
    figure.draw()
}

drawFigure(triangle)



