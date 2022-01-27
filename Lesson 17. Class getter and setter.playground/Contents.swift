import UIKit

var greeting = "Hello, playground"


class SomeClass
{
    
    var someProper:Int
    var someProper: Int
 // {
      /*
        get {
            return someProper
        }
     
        set(newVal)
        {
           //код по тестированию на пригодность newValue
            self.someProper = newVal+1
        }*/
   // }

    init()
    {
        self.someProper = Int()
    }
}

var myInstance = SomeClass();
myInstance.someProper = 3
print("myInstance.someProper = \(myInstance.someProper)")  //Ожидаю 4
