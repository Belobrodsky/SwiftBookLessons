import UIKit

var greeting = "Hello, playground"

print(greeting)

func sumTwoInt(a:Int, b:Int){
print("результат суммы - \(a+b)")
}
sumTwoInt(a: 1, b: 2)


func sumTwoInt2(_:Int, _:Int){
print("результат суммы - )")
}
sumTwoInt2(1, 2)  // так работает, но не понятно как использовать внутри

//third one
func sumTwoInt3(_ a:Int,_ b:Int){ // "_" - outside name of parametrs
    print("результат суммы - \(a+b)")
}
sumTwoInt3(4, 5)

//fourth one
func sumTwoInt4(_ a:Int,_ b:Int) -> Int { // "_" - outside name of parametrs
    let result = a + b
    print("функция 4. результат суммы - \(result)")
    return result
}
sumTwoInt3(6, 5)


//recorsive test
func countdown(firstNum num: Int) -> Void {
    print(num)
    if num > 0 {
        countdown(firstNum: num-1)
    }
}
countdown(firstNum: 20)

//  сквозные параметры - параметры переданные по ссылке

func changeValue(_ a: inout Int, _ b: inout Int) -> Void
{
    let tmp = a;
    a = b
    b = tmp
}
var x = 12, y = 45;
changeValue(&x, &y)
print("x=\(x) y = \(y)") //it works



