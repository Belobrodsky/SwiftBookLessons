import UIKit

var greeting = "Hello, playground"

func countSidesOfShape (_ shape:String) -> Int?
{
    switch shape {
    case "треугольник": return 3;
    case "квадрат","четырехугольник": return 4;
    default: return nil;
    
    }
}

func maybePrintCount(shape: String) -> Void
{
    let sides = countSidesOfShape(shape)
    if sides != nil
    {
        print(type(of: sides))
        print("Фигура \(shape) имеет \(String(describing: sides)) сторон")
        
    } else {print(type(of: sides))
        print("Неизвестно кол-во сторон фигуры \(String(describing: sides))")
        
    }
}

maybePrintCount(shape: "dfgsds")
maybePrintCount(shape: "квадрат")

func maybePrintCount2(shape: String) -> Void
{
    
    if let sides = countSidesOfShape(shape)
    {
        print(type(of: sides))
        print("Фигура из функции 2 -  \(shape) имеет \(String(describing: sides)) сторон")
        
    } else {
        let sides = countSidesOfShape(shape)
        print(type(of: sides))
        print("Неизвестно кол-во сторон фигуры \(String(describing: sides))")
        
    }
}

maybePrintCount2(shape: "четырехугольник")

// Фича оператора GUARD
func maybePrintCountGuard(shape: String) ->Void
{
    guard let sides = countSidesOfShape(shape) else {
        print("что-то пошло не так и GUARD  завершил")
        return
        
    }
    print("Фигура \(shape)  имеет \(sides) сторон. Прошли Guard")
}
maybePrintCountGuard(shape: "dfasefsa")
maybePrintCountGuard(shape: "треугольник")


// оператор отложенных действий defer

func someFunction()
{
    defer {print("первое отложенное")}
    defer {print("второе отложенное")}
    print("печать из тела функции")
}
someFunction() //внимание на порядо вывода

