import UIKit

/*
 это пример многострочного комментария
 тест
 */

let a=1, b=2, c=3
//это пример однострочного комментария
var d:Int
var greeting = "Hello, playground"
print(greeting)
print(143*123)
//: *markdown комментарии*
/*
 только нужно включить editor - show rendered markup
 */
//: **это жирный**
//prin
greeting = "123"
d = a*81*b*c
print("значение  d=\(d)")  
print(Int.max)
print(UInt.max)
//print(Mat=)
var cc=1.2232; var ee=123.12313;
cc+=3 //сокращенная запись сс=сс+3
print(144 % b)  // оператор остатка от деления
print(Double(c)*cc) //умножить данные разных типов не получилось без насильственного приведения типов
//UIPrintInfo()
//sin(0)
let number=1_000_000 // классная запись целах чисел... чтобы наглядно было все видно
print(number+1)
var myWallet:Decimal=0

let incomeAfterOperation:Decimal=0.1

myWallet+=incomeAfterOperation
print(myWallet)
myWallet+=incomeAfterOperation
print(myWallet)
myWallet+=incomeAfterOperation
print(myWallet)
myWallet+=incomeAfterOperation
print(myWallet)
myWallet+=incomeAfterOperation
print(myWallet)
myWallet+=incomeAfterOperation
print(myWallet)

var myBull=true
if myBull {print("yes")}

/*
 13.01.2022 What is cortezh in swift.
 */

var myTouple = (X:12,Y:32)
var myTouple2 = (X:1,Y:1)
var myResultTouple: (X:Int, Y:Int)


//myResultTouple = myTouple + myTouple //НА ДУРОЧКУ НЕ РАБОТАЕТ

myResultTouple.X = myTouple.X + myTouple2.X
myResultTouple.Y = myTouple.Y + myTouple2.Y

print(String(myResultTouple.X)+" "+String(myResultTouple.Y)) // НО ЭТО СКОРЕЕ ВСЕГО КОЛХОЗ - НУЖНО УМНЕЕ
print("X=\(myResultTouple.X) Y=\(myResultTouple.Y)") //  Так более изящней

var meJustme = (Name:"Vladimir", Surname:"Belobrodsky", age: 35)

print(meJustme.Name)

//попытка обратного преобразования

var (myName,mySurname,myAge) = meJustme

print (mySurname)

/* последовательости и коллекции механихзмы для агрегации данных */







