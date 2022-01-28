import UIKit

var greeting = "Hello, playground"

protocol Named
{
    var name:String {get}
}

protocol Aged
{
    var age: Int {get}
}

struct Person: Named,Aged{
    var name: String
    var age: Int
}

func wishHappyBirthday(celebrator: Named & Aged)
{
    print("С днем рождения, \(celebrator.name). Тебе уже \(celebrator.age)")
}

var vladimir = Person(name: "Владимир", age: 35)
wishHappyBirthday(celebrator: vladimir)
