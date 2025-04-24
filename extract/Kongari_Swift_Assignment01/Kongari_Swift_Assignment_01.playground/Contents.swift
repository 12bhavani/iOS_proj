import UIKit

//*******Questions******//
// 1. In which year was the first version of the Swift programming language introduced?
// Explain why Swift is considered a modern and user-friendly programming language.
// Also, describe type safety and type inference in Swift with examples.
print("First version of the Swift programming language introduced in 2014.")
print("Swift is open sourced and easy to learn as it is very simple and has easy syntax. Its approach is familiar, and is safe, fast and expressive. Also, the features of Swift are designed to work together to create a powerful language.")
print("Type safety means the compiler will validate the type while compiling, and throw a compiler error if tried to assign wrong type to a value to variable. Example: var value: Int = 5; value = 15.78. Type inference enables Swift to assign data types quickly. Example: let double = 13.26; let integer = 77.")
print("----------------------")
// End of question 1


// 2. Declare a constant 'pi' of type Double with the value 3.14. Write code to calculate
// the area of a circle with a radius of 10.0 units using the formula: Area = pi * radius * radius.
// Print the calculated area as shown in the sample output below:
// "The area of the circle with radius 10.0 is **** square units."
let pi:Double = 3.14
var radius = 10.0
var area = pi*radius*radius
print("\nThe area of the circle with radius \(radius) is \(area) square units.\n")
print("----------------------")
// End of question 2


// 3. Declare a variable with a value of 212°F (boiling point of water) in Fahrenheit, convert it to Celsius,
// and round it to one decimal place. Print the result in this format:
// "Temperature: 212°F is equivalent to ****°C."
var tempInF = 212
var tempInC:Double = Double(((tempInF-32)*5)/9)
print("Temperature: 212°F is equivalent to \(tempInC)°C.")
print("----------------------")
// End of question 3


// 4. Write three statements about why Swift is a great language for beginners and developers.
// Display the first two statements on one line and the third statement on the next line using print statements.
print("Swift has readable syntax, making it easy to learn and understand when compared to other languages.",terminator: " ")
print("Swift provides detailed error messages, which is easy for beginners to detect errors.")
print("Swift concepts and features are more concise and user-friendly.")
print("----------------------")
// End of question 4


// 5. Display the following using a single print statement:
// "Swift is an intuitive, powerful, and safe programming language designed for iOS and other Apple platforms.
// It offers modern features, concise syntax, and exceptional performance that developers love."
print("""
Swift is an intuitive, powerful, and safe programming language
designed for iOS and other Apple platforms. It offers modern
features, concise syntax, and exceptional performance that
developers love
""")
print("----------------------")
// End of question 5


// 6. Declare two variables, num1 and num2, and assign them any two 3-digit numbers.
// Write code to calculate their product and determine how many digits the product contains.
// Print the result in this format:
// "The product of <num1> and <num2> is ****, and it has **** digits."
var num1 = 127
var num2 = 239
var res = num1*num2
print("The product of \(num1) and \(num2) is \(res), and it has \(String(res).count) digits.")
print("----------------------")
// End of question 6


// 7. Create a variable with the value "Swift programming is fun!".
// Count the total number of characters excluding spaces and print them as individual characters separated by "+".
// For example: "S+w+i+f+t+p+r+o+g+r+a+m+m+i+n+g+i+s+f+u+n"
var str = "Swift programming is fun!"
let resStr = str.replacingOccurrences(of: " ", with: "")
var count = resStr.count
print("The number of characters excluding spaces in the above text is \(count) The modified text is:")
for i in resStr{
    if i.isLetter{
        if i != resStr.first{
            print("+",terminator: "")
        }
        print(i,terminator: "")
    }
}
print()

print("----------------------")
// End of question 7


// 8. A car is traveling at a constant velocity of 20 m/s for 12 seconds.
//Calculate the total distance traveled during this time period using the formula:
//Distance = velocity × time
//Print the result in this format:
//"The car traveled a distance of **** meters."
var velocity = 20
var time = 12
var dist = velocity*time
print("\nThe car traveled a distance of \(dist) meters.")
print("----------------------")
// End of question 8
