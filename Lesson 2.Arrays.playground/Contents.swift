import UIKit

var greeting = "Hello, playground"

///array creation variants
var myFistArray = [1,2,3,4,5,6,7,8,9,10]
var mySecondArray = Array(0...10)
var myThirdArray = Array(repeating: 7, count: 27)
var myFourthArray = Array(arrayLiteral: 12,23,23,123,123,212)


for item in myFistArray {
print(item)
}

///печать на экран только не четных элементов
///
for arrayItem in myFistArray {
    if arrayItem % 2==0 {
        continue
    } else {
        print(arrayItem)
    }
}

var res=0
for arrayItem in 1...10 where arrayItem%2==0 {
    res+=arrayItem
}

print(res)

//without 100
for i in stride (from: 10, to: 100, by: 10){
    print(i)
}

///with 100
for i in stride (from: 10, through: 100, by: 10){
    print(i)
}

var a = stride (from: 0, to: 50, by: 5)
print(type(of: a))

for item in a {
    print("\(item) \(type(of: item))")
}

var iteratItem = 0;

while iteratItem<100
{
    print(iteratItem)
    iteratItem+=10;
    
}

iteratItem=0
repeat
{
    print(iteratItem)
    iteratItem+=20
    
    
} while iteratItem<200

let dragonCharacteristics: (color: String, weight: Float) = ("красный", 1.4)
            switch dragonCharacteristics {
case ("зеленый", 1.2): print("no")
case ("красный", 1..<2): print("yes")
case ("зеленый2", 1.3): print("no")
default:print("no dragons")
}
            
//swich with where
print("=========")
let dragonCharacteristics2: (color: String, weight: Float) = ("красный", 6) // 6- works, 5 and other odd - no
            switch dragonCharacteristics {
case ("зеленый", 1.2): print("no")
            case ("красный", 1..<2) where dragonCharacteristics2.weight.truncatingRemainder(dividingBy: 2) == 0: print("yes");print(" i am here");
case ("зеленый2", 1.3): print("no")
default:print("no dragons")
}
 
//var isAvailable = true
//guard isAvailable else {print("не правда"); return;} //вернемся к guard позже



