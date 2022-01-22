import UIKit

var greeting = "Hello, playground"

let array = [123,1231,43,12,1232,1123,1231,1,123,2342,1231,324]
var sortedArray = array.sorted(by: { (first:Int, sec:Int) -> Bool in return first < sec})

for item in sortedArray
{print(item)}

//Сумма двух чисел закрепление
let sum: (_ num:Int, _ num2:Int) -> Int = {$0+$1}
print(sum(123,421))

//старое традиционное функция, а вверху модная молодежная
func mySum(_ num:Int, _ num2: Int) -> Int
{
    return num+num2
}
print(mySum(321, 231))

//sortedArray = array.sorted(by: { (f:Int,s:Int) -> Bool  in return f>s})
sortedArray = array.sorted(by: { $0>$1}) //ЭКВИВАЛЕНТНО ВЕРХНЕЙ ЗАКОМЕНТИРОВАННОЙ СТРОЧКЕ
for item in sortedArray
{print(item)}

//THE SMOLLEST ONE
print("the smollest one is follow:")
sortedArray = array.sorted(by: <) //ЭКВИВАЛЕНТНО ВЕРХНЕЙ ЗАКОМЕНТИРОВАННОЙ СТРОЧКЕ
for item in sortedArray
{print(item)}
