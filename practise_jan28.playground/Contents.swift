import UIKit

let number = 7
print("\(number) table:")
for multiplier in 1...10{
    print("\(number)*\(multiplier) = \(number*multiplier)")
}

let n = 10
var sum = 0
for num in 0...n{
    sum += num
}
print("sum of \(n) natural numbers: \(sum)")

print("numbers in reverse order: ")
let num1 = 11
for i in 1...11{
    print(num1-i)
}

print("odd  values in range of \(n): ")
for i in 1...n{
    if(i % 2 == 0){
            print(i)
    }
}

//while loops:

var num2 = 5
var start = 1
var fact = 1
while start <= num2 {
    fact = fact*start;
    start += 1
}
print("factorial of \(num2) is \(fact)")

var currentValue: Int = 40
while currentValue >= 4 {
if currentValue % 4 == 0 {
print("\(currentValue)", terminator: " ")
}
currentValue -= 1
}
print()

//repeat while:

var count = 10
repeat {
    print(count)
    count-=1
}while count>0

var repetitions = 0
let targetRepetitions = 3
repeat {
    print("Swift is Fun!")
    repetitions += 1
} while repetitions<targetRepetitions

var x = 0
var y = 5
while y > 0 {
    y -= 1
    x = 0
    while x < 5 {
        x += 1
        if x == y {
            continue
        }
        print("(\(x), \(y))", terminator: " ")
    }
}

print()
var value = 80
while value > 40 {
    value -= 20
    }
print(value)
if value > 50 {
    value -= 10
    }
else {
    value += 15
    }
print(value)

//switch cases:
let letter: Character = "O"
switch letter {
    case "a", "e", "i", "o", "u":
        print("The letter is a lowercase vowel")
    case "A", "E", "I", "O", "U":
        print("The letter is an uppercase vowel")
    default:
        print("The letter is a consonant")
}

let digit: Character = "3"
switch digit {
    case "1", "2":
        print("It is digit 1 or 2")
    case "3":
        print("It is digit 3")
    case "4":
        print("It is digit 4")
    default:
        print("None of the cases above are executed")
}

var a: Int = 2
var b: Int = 3
var c: Int = 4
switch a {
    case 1:
        print("\(c)~", terminator: "")
    case 2:
        print("\(a)~", terminator: "")
        switch b {
        case 1:
            print("Created new \(a)~", terminator: "")
        case 2:
            print("\(b)~", terminator: "")
            switch c {
            case 4:
                print("\(c)~", terminator: "")
            case 3:
                print("\(b)~", terminator: "")
            default:
                print("No matching case found")
            }
        default:
            print("No matching case found")
        }
    default:
        print("No number is matching")
    }

print()
var str = "Bunnie"
for i in str{
    print(i)
}
