import UIKit

var greeting = "Hello, playground"


func someFunc(direction: String, step: Int, moveUp: (Int) -> Void, moveDown: (Int)-> Void) -> Void
{
    
    switch direction {
case "up": moveUp(step);
case "down": moveDown(step);
default: break;
    }
}

someFunc(direction: "down", step: 777, moveUp: {data -> Void in print("move to UP \(data)")}, moveDown: {data -> Void in print("move to up \(data)")})

someFunc(direction: "up", step: 555) {data in print("move to up \(data)") } moveDown: { dataDown in
    print("move to down \(dataDown)")
}


let myClosure1: (Int) -> Void = { data in print("move to up \(data)")}
let myClosure2: (Int) -> Void = { data in print("move to down \(data)")}

let myClosure3: (Int) -> Void = { print("move to down \($0)")} // КРУТОЙ ПРИМЕР

someFunc(direction: "up", step: 555, moveUp: myClosure3, moveDown: myClosure2)

//function of summ
var sum: (_ numOne: Int, _ numTwo: Int) -> Int = {$0 + $1}
print(sum(123,123))

let myPrint: (_ str:String) -> Void = {print("KV_on_07.08.2032_\($0)")}
myPrint("моя консоль приветсвует Вас...")
