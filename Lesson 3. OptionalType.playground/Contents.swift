import UIKit

var greeting = "Hello, playground"


//Optional Type Demo

var optionalInt: Int? = 99

optionalInt=nil
print("data type of optionalInt is \(type(of: optionalInt))")

if optionalInt != nil
{
    
    print("we somethingHave")
} else { print("we have nothing, i.e. nil") }

var tupleWithOptElements: (Int?, Int) = (nil,100)

tupleWithOptElements.0 = 99

//print(Int(tupleWithOptElements.0)) //It does n't work - i need to us unwrapping sympol!
print(tupleWithOptElements.0!);

//var a = 3 + Int(tupleWithOptElements.0)

tupleWithOptElements.0 = 7

print(tupleWithOptElements.0!)
tupleWithOptElements.0!+=3;
print(tupleWithOptElements.0!)

//optional binding


var pointX: Int? = 774  //Please try something else, like nil
var pointY: Int? = 3
if let X = pointX, let Y = pointY {  //this is optional binding like nil
    print("sum=\(X+Y)") } else { print("one or more value is nil")}

pointY = 123
if let _ = pointX, let _ = pointY {  //symbol "_" used when variable is not necessery in the code
    print("sum=\(pointX!+pointY!)") } else { print("one or more value is nil")}

let coinsInNewChest = "140ug" // система автоматически уловит ошибку преобразования
var allCoinsCount = 1301
var coins = Int(coinsInNewChest)

print(type(of: coins))
if coins != nil  {
    allCoinsCount += coins!
    print("золото прибавлено \(allCoinsCount)")
} else { print("нет золота")}


// the defaultvalue
var optionalInt2: Int? = 20
var mustHaveResult = optionalInt2 ?? 0 // if optionalInt = nil, then mustHaveResult = 0

print(mustHaveResult) // по типу оказался чистокровный nil
optionalInt2 = nil
print(mustHaveResult)
//try again

// mustHaveResult = optionalInt2! // приводит к ошибке так как к интежеру присваивается нил

//попроьбуем по другому

if  let mustHaveResult2 = optionalInt2
{ print("да \(mustHaveResult2)") }
else
{
    print("нет")
}



