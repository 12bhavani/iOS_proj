import UIKit

var batterylevel = 20
if batterylevel>80{
    print("Battery is full \(batterylevel)%")
}
else if (batterylevel<80 && batterylevel>20){
    print("Battery level is moderate \(batterylevel)%")
}
else{
    print("Low battery \(batterylevel), connect to charger")
}

var number = -50
if number>0{
    print("\(number) is a positive")
}
else if number<0{
    print("\(number) is a negitive")
}
else{
    print("number is 0")
}

var isAuth = false
var useRole = "guest"
if isAuth{
    if useRole=="Admin"{
        print("\(useRole) successfully logined with full access")
    }
    else{
        print("\(useRole) successfully logined with limited access")
    }
}
else{
    print("Pleasse login to continue")
}
