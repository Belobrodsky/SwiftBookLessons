import UIKit

var greeting = "Hello, playground"


var sum: (_ num1: Int, _ num2: Int) -> Int = { $0 + $1 }
print(sum(123,432))

let myArray = [2,43,123,43,12]
var newArray = myArray.map{$0*$0+100} //is is very usefull func map that retranslate each elements and implement some action on it
newArray //just for print

//version2
newArray = myArray.map({ (value:Int) -> Int in return value*value+101})
newArray //here and below just for printing on the right side

//convert to another dataType
var boolArray = myArray.map({(value:Int) -> Bool in return value<10})
boolArray

//short form
boolArray = myArray.map{$0<20}
boolArray

//short form
boolArray = myArray.map({$0>20})
boolArray


let mapped = myArray.map({Array(repeating: $0, count: $0)})
mapped

let milesToDest = ["Moscow":120.0,"Dubai":50.0,"Paris":70.0]
let kmToDest = milesToDest.map {name,miles in [name:miles * 1.6093]}
kmToDest

