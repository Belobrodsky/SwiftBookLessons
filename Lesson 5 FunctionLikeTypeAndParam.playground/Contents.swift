import UIKit
import Foundation
import Darwin

var greeting = "Hello, playground"

func printText()
{
    print("Функция вызвана")
}

func returnPrintTextFunc() -> () -> Void
{
    return printText
}

print("шаг 1")
let funcVar = returnPrintTextFunc()
print("шаг 2")
funcVar()
print("шаг 3")

//======================================

func generateWallet(walletLength: Int) -> [Int] {  //   функция генерирует массив из инт заднной длинны - банкноты в кошелке
    
    var wallet: [Int] = [] //инициализировали пустой массим
    let possibleKupurs = [50, 100, 500, 1000, 5000]
    for _ in 1...walletLength
    {
        wallet.append(possibleKupurs.randomElement()!)
    }
    return wallet
    
}

func generateWalletNew(walletLength: Int) -> [Int] {  //   функция генерирует массив из инт заднной длинны - банкноты в кошелке
    
    var wallet: [Int] = [] //инициализировали пустой массим
    let possibleKupurs = [50, 200, 500, 1000, 5000]
    for _ in 1...walletLength
    {
        wallet.append(possibleKupurs.randomElement()!)
    }
    return wallet
    
}
//Вариант 1
//сделаем так, чтобы этьа функция была засунута в другую функцию и там запускалась и подчиталась сумма ее элементов
func myMainFunc (kupurGenFunc: (Int) -> [Int], Count: Int) -> Int { // эта функция принимает в себя генерирующую функцию, например ту что выше, а может быть другую, но с этой же сигнатурой, и кол-во элементов, а возвращает сумму элементов сгенерированного массива
    
    let myRealWallet = kupurGenFunc(Count); //создали тут внутри реальный кошелек
    var sum:Int = 0
    for item in myRealWallet
    {
        sum+=item
    }
    return sum;
}

//Вариант 2
//сделаем так, чтобы этьа функция была засунута в другую функцию и там запускалась и подчиталась сумма ее элементов
func myMainFunc2 (_ kupurGenFunc: (Int) -> [Int], _ Count: Int) -> Int { // эта функция принимает в себя генерирующую функцию, например ту что выше, а может быть другую, но с этой же сигнатурой, и кол-во элементов, а возвращает сумму элементов сгенерированного массива
    
    let myRealWallet = kupurGenFunc(Count); //создали тут внутри реальный кошелек
    var sum:Int = 0
    for item in myRealWallet
    {
        sum+=item
    }
    return sum;
}


print("Сумма сгенерированных функцияй эдементов myMainFunc \(myMainFunc(kupurGenFunc: generateWallet, Count: 10))");

print("Сумма сгенерированных функцияй эдементов myMainFunc2 \(myMainFunc2(generateWallet, 100))");

//print("Сумма сгенерированных функцияй эдементов myMainFunc2 \(myMainFunc2(generateWallet(walletLength: 100), 100))");
// тут ошибка - Cannot convert value of type '[Int]' to expected argument type '(Int) -> [Int]'
    /*
     
       и понятно почему - так как код сразу ее выполнил и теперь пытается подсунуть ее результат - Int[]
     */
/*
 
 что это дало - это доло возможность генерировать новые функции и подсовывать их в уже имеющуюся
 */
print("Сумма сгенерированных функцияй эдементов myMainFunc2 \(myMainFunc2(generateWallet, 100))");
print("Сумма сгенерированных функцияй эдементов myMainFunc2 с новой функцией генерации кошелька внутри \(myMainFunc2(generateWalletNew, 100))");

//вложенные функции


