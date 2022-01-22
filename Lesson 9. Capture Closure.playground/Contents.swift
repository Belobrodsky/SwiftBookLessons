import UIKit

var greeting = "Hello, playground"

var a = 1
var b = 2
let closureSum : () -> Int = {a+b}

print(closureSum())
a = 7
b = 9
print(closureSum())
// мы видим что значения суммы поменялось. Существует способ захватить первоначальные. Например так

let closureFix: () -> Int = { [a,b] in a + b}

print("Before change \(closureFix())")

a = 10
b = 20
 
print("After change \(closureFix())") // Мы видим что ничего не изменилось

//интересный пример. функция возвращает другую функцию и получается она именно будет запускаться при вызове инициализированной в исходную функцию переменной.

func myOutFunc(increment amount: Int) -> () -> Int {
    var runTotal = 0;
    func innerIncrement() -> Int {
        runTotal+=amount
        return runTotal
    }
    return innerIncrement
}

print("captureInnerFunct")
print(myOutFunc(increment: 10)());
print(myOutFunc(increment: 10)());
/// При таком вызове внутрення переменная   runTotal обнуляется
///
///
let innerFuncVar = myOutFunc(increment: 10);

innerFuncVar()  //10
innerFuncVar()  //20
innerFuncVar()  //30
print(innerFuncVar()) //40   а вот тут ссылка на внутреннюю функцию живет

let incBySeven = myOutFunc(increment: 7)
incBySeven()
incBySeven()
incBySeven()
print("4*7 = \(incBySeven())")

//Значения увеличиваются так как функции возвращают захваченный раннет  runTotal()


//ЗАМЫКАНИЯ ПЕРЕДАЮТСЯ ПО ССЫЛКЕ
let incByFive = myOutFunc(increment: 5)
var copyIncByFive = incByFive;

incByFive()
copyIncByFive() //it is the same one like above due to reference type of this function data type
incByFive()
print("I think it would be 20: \(copyIncByFive())")

// Авто замыкания

var arrayofNames = ["Lera", "Julia", "Olga",  "Gerus", "Sonya","Lera", "Julia", "Olga",  "Gerus", "Sonya"]
func printName(nextName:String)
{
    print(nextName)
}
printName(nextName: arrayofNames.remove(at: 0)) //удаление происходит даже при вызове функции
printName(nextName: arrayofNames.remove(at: 0))

func printName2(nextName: () -> String)
{
    //в этом примере тут я еще могу что либо сделать перед тем как удалить
    var girl = nextName() //именно только сейчас произошло удаление
    girl+=" more and more"
    print(girl)
}
printName2(nextName: {arrayofNames.remove(at: 0)}) //тут подсунул код именно в момент вызова, а не в моме
//  код выше можно сделать более красивым и язящным с помощью автозамыкания


func printName3(nextName:  @autoclosure () -> String)
{
    //в этом примере тут я еще могу что либо сделать перед тем как удалить
    var girl = nextName() //именно только сейчас произошло удаление
    girl+=" more and more autoclosure"
    print(girl)
}
printName3(nextName: arrayofNames.remove(at: 0)) // @autoclosure  позволило избавиться от необходимости фигурных скобокы

//@escaping - побег из тюрмы - побег за пределы области своей видимости

var arrayOfClosures:  [ ()-> Int] = []
func addNewClosureInArray(_ newClosure: ()->Int) ->Void
{
    //arrayOfClosures.append(newClosure) //  эта строчка ведет к ошибке, так как newClosure живет только внутри этой функции и не может выйти наружу, но можно разрешить ей это сделать с помощью ключевого слова @escaping
    
}

func addNewClosureInArray2(_ newClosure: @escaping ()->Int) -> Void
{
    arrayOfClosures.append(newClosure) //  эта строчка с помощью данного ключевого слова это замыкание может сбежать за пределы области своей видимости
    
}

addNewClosureInArray2({return 100})
addNewClosureInArray2({return 1000})
var sum = arrayOfClosures[0]() + arrayOfClosures[1]()
print("результат выполнения двух функций одновременно = \(sum)")

