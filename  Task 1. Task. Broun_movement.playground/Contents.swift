import UIKit

var greeting = "Hello, playground"

//нужно сдвинуть точку на плоскости в зависимости от заданного направления с использованием вложенных в друг друга функций
func moveCoord(coordinate: inout (Int,Int), direction: String) -> Void
{
    func up(coor: inout (Int, Int)) -> Void
    {
        coor.1-=1; //координату y приподняли вверх, так как отчет идет с левого верхнего угла
    }
    func down(coor: inout (Int, Int)) -> Void
    {
        coor.1+=1;
    }
    func mleft(coor: inout (Int, Int)) -> Void
    {
        coor.0-=1;
    }
    func mright(coor: inout (Int, Int)) -> Void
    {
        coor.0+=1; //координату y приподняли вверх, так как отчет идет с левого верхнего угла
    }
    
    switch direction {
    case "up": up(coor: &coordinate);
    case "down": down(coor: &coordinate);
    case "left": mleft(coor: &coordinate);
    case "rigth": mright(coor: &coordinate)
    default: break;
        }
    }

//ну что же попробуем запустить написанный код

var myCoord = (100,100)
moveCoord(coordinate: &myCoord, direction: "up")
print("после сдвига вверх значение равно \(myCoord.0) \(myCoord.1)")

moveCoord(coordinate: &myCoord, direction: "down")
print("после сдвига  вниз должны вернуться к исходному  значению \(myCoord.0) \(myCoord.1)")

moveCoord(coordinate: &myCoord, direction: "rigth")
print("после сдвига  вправо \(myCoord.0) \(myCoord.1)")

moveCoord(coordinate: &myCoord, direction: "left")
print("и вернемся назад налево \(myCoord.0) \(myCoord.1)")

//подвигаемся теперь в цикли

//let start = myCoord.0
let movements = ["up", "down", "left", "rigth"]

for _ in 1...100000 {
    moveCoord(coordinate: &myCoord, direction:  movements.randomElement()! )
    print("наблюдаем броуновское движение частицы \(myCoord.0) \(myCoord.1)")
    
}
