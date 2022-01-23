import UIKit

var greeting = "Hello, playground"


var sum: (_ num1: Int, _ num2: Int) -> Int = { $0 + $1 }
print(sum(123,432))

var sum2: (Int, Int) -> Int = { $0 + $1 }
print(sum(123,432))

var sum3 = {(value1:Int, value2: Int) -> Int in
    
    if value1>0 && value2>0 {return value1+value2}
    else {return -1;}
    
}

print("Сумма sum3(123,-3) = \(sum3(123,-3))")



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
print(type(of: milesToDest))
let kmToDest = milesToDest.flatMap {name,miles in [name:miles * 1.6093]}
kmToDest
let newDict = Dictionary(uniqueKeysWithValues: kmToDest)
//let kmFlatToDest=kmToDest.flatMap({$0})
print(type(of: newDict))
//print(type(of: kmFlatToDest))


print(type(of: kmToDest))
print(type(of: milesToDest))

let kmToDest2 = milesToDest.mapValues(){$0*1.6093}
print(kmToDest2)

print(type(of: kmToDest2))


let stringArray = ["1","2","3","four","5"]
let intFromStringArray =  stringArray.map() {Int($0)}
intFromStringArray
let arrayWithNil = stringArray.compactMap() {Int($0)}
arrayWithNil

let numArray = [1,32,12,12,43,123]
let even = numArray.filter() {$0 % 2 == 0 }
let even2 = numArray.filter({ $0 > 10 })
even
even2

let startDistanceDict = ["Wolf 359":7.78, "Alpha Centauri B": 4.37, "Alfacentavr": 5.96]
let closesStart = startDistanceDict.filter() {$0.value < 5.0}
closesStart


///reduce
///
///

let cash = [123,432,1234,42,234,2131,]

print(cash.reduce(1, +)); //вск просуммировать и прибавить 1

//zip

let collectionOne = [1,2,3]
let collectionTwo = [4,5,6]
print(type(of: collectionTwo))
let zipSequence = zip(collectionOne,collectionTwo)
print(type(of: zipSequence))
let newArray2 = Array(zipSequence)
print(type(of: newArray2))

let newDictionary = Dictionary(uniqueKeysWithValues: zipSequence)
newDictionary
print(type(of: newDictionary))



//collectionTwo.Su
