import UIKit

var greeting = "Hello, playground"
print(greeting)

struct Circle
{
    var coordinates: (x:Int, y:Int)
    var radius: Float
    var perimeter: Float
    {
        get{
            return 2.0*3.14*radius
        }
        set(newPerimetr)
        {
           // self.perimeter = newPerimetr/2;
            radius = newPerimetr/(2*3.14)
        }
        
    }
}
      var newCircle = Circle(coordinates: (x: 0, y: 0), radius: 10)
      print(newCircle.perimeter)
      newCircle.perimeter=31.4
      print(newCircle.perimeter)
      print(newCircle.radius)
print(newCircle.perimeter)
