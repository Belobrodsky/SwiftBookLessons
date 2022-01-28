import UIKit

var greeting = "Hello, playground"


enum TypeOfAnimals {case dog, cat, fish, hourse}

protocol MastHaveName
{
    var name:String {get set}
    func walk()->()

}


class Animals: MastHaveName
{
    var name:String
    var type:TypeOfAnimals
    
    func walk(){

    }
    init(name:String,type: TypeOfAnimals)
    {
        self.name = name
        self.type = type
    }
}

var myDogFromAnimals = Animals(name: "Rocket", type: TypeOfAnimals.dog)

print("I am \(myDogFromAnimals.type) and my name is \(myDogFromAnimals.name)")


class Dog: Animals
{
    func bork()
    {
 print("Gaf")
    }
}
var myDogFromDog:Animals;
myDogFromDog = Dog(name: "Lelya", type: TypeOfAnimals.dog)
//myDogFromDog.bork() //dont work
myDogFromDog.walk()

var myDogFromDog2:Dog;
myDogFromDog2 = Dog(name: "Lelya", type: TypeOfAnimals.dog)
myDogFromDog2.bork()
myDogFromDog2.walk()

class NoisyDog:Dog
{
    override func bork()
    {
        print("Noisy dog \(self.name) often say's:")
        for _ in 1...3
        {
            super.bork()
        }
    }
}

var myNoisyDog = NoisyDog(name: "NoisyDog", type: TypeOfAnimals.dog)
myNoisyDog.bork()


