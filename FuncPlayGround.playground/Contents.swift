import UIKit

func sayHello()->String{
    var name = "Swift"
    return "Hello "+name
}

print(sayHello())

func favoriteProgram(name:String)->String {
var name="My favorite programming language is \(name)"
return name
}
print(favoriteProgram(name:"Python"))


func subnumbers(num1:Int, num2:Int) -> Int{
return num1-num2
}
print(subnumbers(num1:12,num2:3))

func addnumbers(_ num1:Int, num2:Int) -> Int{
    return num1+num2
}
print(addnumbers(2,num2:3))

func numberManipulation(age:Int, birthday:Bool)->String{
    var ageInput = age
    if(birthday){
        ageInput += 1
    }
    return "Your age is \(ageInput)"
}
print(numberManipulation(age: 21, birthday: true))

func login(sid username:String, password:String)->Bool{
    if(username=="s57" && password=="123"){
        return true
    }
    return false
}
var res:Bool = login(sid:"s57",password:"123")
if(res){
    print("accept")
}
else{
    print("reject")
}
