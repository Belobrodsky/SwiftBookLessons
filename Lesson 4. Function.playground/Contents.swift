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



// variable input parametrs
func varInputCount(codes: Int..., id: Int) -> Void {
 var codeStrings=""
    for oneCode in codes
    {
        codeStrings+=String(oneCode) + " ";
    }
print(codeStrings)
}

varInputCount(codes: 12, 34243,1231,1231,123, id: 4454)

//cortezh for output

func corForOutput(intItem: Int, strItem: String) -> (Int,String)
{
    let result = (intItem + 1, strItem + "_KV_07.08.2032")

    print(result)
    return result
}

corForOutput(intItem: 12, strItem: "KVB")

//other version
func corForOutput2(_ intItem: Int, _ strItem: String) -> (Int,String)
{
    let result = (intItem + 1, strItem + "_KV")

    print(result)
    return result
}
corForOutput2(26, "KVB")

//third version
///
///
func corForOutput3(outName1 intItem: Int, outName2 strItem: String) -> (Code: Int,Desc: String)
{
    let result = (intItem + 1, strItem + "_KV_output3_inner")

    print(result)
    return result
}
print(corForOutput3(outName1: 123, outName2:  "KVB-07082032").Desc + "_out")

//default value in function
func testDefaultValue(_ a: Int, _ b: String = "My Default value") -> Void
{
    print("Итого \(a) и \(b)")
}

testDefaultValue(1) //print default
testDefaultValue(777,"My own test")


