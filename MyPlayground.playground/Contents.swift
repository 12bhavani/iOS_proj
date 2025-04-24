import UIKit

var fact = "Swift is a type safe language"
var dev = "Development of Swift began in 2010"
var author = "Swift was created by Chris Lattner"

print(fact.count)
fact += ", it has a better memory management"
print(fact)
dev.append(" by Apple")
print(dev)
author.lowercased()
print(author)
print(author[author.startIndex])
print(author[author.index(before: author.endIndex)])

var name = "Bhavani Kongari"
print(name[name.startIndex])
print(name[name.index(after: name.startIndex)])
print(name[name.index(before: name.endIndex)])
print(name.index(name.startIndex, offsetBy: 4))
print(name[name.index(name.startIndex, offsetBy: 4)])
print(name.index(name.endIndex, offsetBy: -4))
print(name[name.index(name.endIndex, offsetBy: -4)])


//

var shoppingList = "The shopping list contains: "
var foodItems = "Cheese, Butter, Chocolate Spread"
var clothes = "Socks, T-shirts"

if(foodItems.hasPrefix("Cheese")){
    print("True")
}
else{
    print("False")
}

//if split value is not there the whole word is returned in array with 1 length
print(foodItems.split(separator: "*"))

if clothes.contains("*") {
print("Clothes contains more than one item")
}else{
print("Clothes contain only one item")
}

print(foodItems[foodItems.startIndex..<foodItems.index(foodItems.endIndex,offsetBy: -7)])

shoppingList += foodItems[foodItems.index(foodItems.startIndex, offsetBy:8)..<foodItems.endIndex]
//printing directly may not give expected output
print(shoppingList)
clothes.remove(at: clothes.firstIndex(of: "T")!)
print(clothes)

var course = "44643-Mobile Computing-iOS"

print(course[course.startIndex..<course.index(course.startIndex, offsetBy: 5)])
print(course[course.firstIndex(of: "M")!..<course.firstIndex(of: " ")!])
print(course[course.firstIndex(of: "M")!..<course.endIndex])

//

var year1 = "2024"
var year2 = "2020"

if year1.elementsEqual(year2){
    print("True")
}
else{
    print("False")
}

var n1 = "Cheese"
var n2 = "cheese"
if(n1.lowercased()==n2.lowercased()){
    print("True")
}
else{
    print("True")
}
