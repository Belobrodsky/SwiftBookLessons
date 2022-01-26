import UIKit
import Foundation

var greeting = "Hello, playground"
/**
 Learning Lazy property in function
 */

class Person
{
    var name: String
    var surname: String
    lazy var wholeName: String = generateWholeName()
     var wholeName2:String { return "\(self.name) \(self.surname)"}
    
    
    func generateWholeName()->String
    {
        return self.name + " " + self.surname
    }
    
    init(name:String, surname:String)
    {
        self.name = name
        self.surname = surname
    }
}

var myWooman=Person(name: "Anna", surname: "Belobrodskaya")
print(" Befor change surname wholename1 \(myWooman.wholeName)")
print(" Befor change surname wholename2 \(myWooman.wholeName2)")


myWooman.surname = "Pozhidaeva"
print("After change surname wholename1 \(myWooman.wholeName)") // Вычисляются только первый раз - ФАМИЛИЯ Осталась таже
print("After change surname wholename2 \(myWooman.wholeName2)")


var smallDict:[Int:[String:Float]] = [:]

for i in 1...10{
        smallDict[i] = [:]
}


smallDict[9]!["Vladimir"] = 1.77



