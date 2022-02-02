import UIKit

var greeting = "Hello, playground"


/// Stack realization with generic
struct LiFo<T> {
    var items = [T]()
    mutating func push(_ item:T){
    items.append(item)
}
    mutating func pop() -> T?
    {
        if items.count>0{
        return items.removeLast()
        } else {return nil}
    }
    
    func printMe()
    {
        for item in items{
            print(item)}
    }
}

//Queue realizaion
struct FiFo<T:Any>
{
    var items = [T]()
    
    mutating func push(_ item:T)
    {
        items.append(item)
    }
    
    mutating func pop() -> T?
    {
        if items.count>0{
            return items.removeFirst()
        }
        else {return nil}
 //       return items.removeFirst()
    }
    
func printMe()
    {
        for item in items {
            print(item)
        }
    } //printMe
}




//var myLifo = LiFo(items: [])
//myLifo.push("123")
//myLifo.push("1123")
//myLifo.push("121243")
//myLifo.push("1212344523")
//
//
//myLifo.printMe()
//print("--------")
//myLifo.pop()
//
//myLifo.printMe()
//print("--------")
//myLifo.pop()
//myLifo.printMe()

var myFiFo = FiFo(items: [421,14311341,123131,1311,121,1])

//guard let b = myFiFo.pop() else { return } //return //break //continue //throw}


//myFiFo.pop()
//myFiFo.pop()
//myFiFo.pop()
//myFiFo.pop()
//myFiFo.pop()
//myFiFo.pop()
myFiFo.pop()
myFiFo.printMe()
//var a = myFiFo.pop()?

//guard let b = myFiFo.pop() else {print("Smth went wrong")} //return //break //continue //throw}















//
//
//
//
//if let a = myFiFo.pop() {myFiFo.printMe()} else {print("Smth went wrong")}
//print("-------")
//if let a = myFiFo.pop() {myFiFo.printMe()} else {print("Smth went wrong")}
////myFiFo.pop()
//print("-------")
//if let a = myFiFo.pop() {myFiFo.printMe()} else {print("Smth went wrong")}
//    print("-------")
//
//
