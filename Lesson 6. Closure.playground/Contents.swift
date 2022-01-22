import UIKit

var greeting = "Hello, playground"


//simple clouse

var closeFunc = { () -> Bool in return true}

print(type(of: closeFunc))
if closeFunc() {print("da, detka")}

//we can simplify expression above, like this

closeFunc = { return true}
 print(type(of: closeFunc))


//this is our wallets with banknots
var wallet = [10,50,100,100,500,5000,100,50,100,100,100,5000,1000]

//we have to handle each banknots wich 100 nominals

func handle100(wallet: [Int]) -> [Int]
{
    var resultArray :[Int] = [Int] ()
    for item in wallet
    {
        if  item == 100 {resultArray.append(item)}
    }
    
    return resultArray;
}

func handleMore200(wallet: [Int]) -> [Int]
{
    var resultArray :[Int] = [Int] ()
    for item in wallet
    {
        if  item > 200 {resultArray.append(item)}
    }
    
    return resultArray;
}

var banknotes100 = handle100(wallet: wallet)
for item in banknotes100
{print(item)}

var banknotesMore200 = handleMore200(wallet: wallet)
for item in banknotesMore200
{print(item)}

//like this we must write annother functional for handle other banknots but as you can see it isnt usefull. The closure is good way to do another.

func handleCupurs(wallet: [Int], compare: (Int) -> Bool) -> [Int]
{
    var resultCup: [Int] = [Int]()
    
    for item in wallet
    {
        if compare(item) {resultCup.append(item)}
    }
    
    return resultCup
}

func compare100(cup: Int) -> Bool
{
    return cup==100
}

print("захват всех 100 из кошелька")
var handledCup = handleCupurs(wallet: wallet, compare: compare100)
for item in handledCup
{print(item)}

func compareMore100(cup: Int) -> Bool
{
    return cup>100
}
print("захват всех что больше 100 из кошелька")
handledCup = handleCupurs(wallet: wallet, compare: compareMore100)
for item in handledCup
{print(item)}


print("попробуем захватить 100 с помощью анонимной функции Closure")
//try to do this with Closure
handledCup = handleCupurs(wallet: wallet, compare: { (item: Int) -> Bool in return item==100})
for item in handledCup
{print(item)}




print("попробуем захватить все что больше 50 с помощью анонимной функции Closure")
//try to do this with Closure
handledCup = handleCupurs(wallet: wallet, compare: { (item: Int) -> Bool in return item>50})
for item in handledCup
{print(item)}  //КРУТО, ЭТО РАБОТАЕТ
//тут мы видим, что безымянная функция была передана КАК ПАРАМЕТР на вход основной обрабатывающей функции


//далее мы можем упростить замыкание. Так как тип функции был описан выше при ее реализации - тут указывать это излишне
print("попробуем захватить все что больше 50 с помощью УПРОЩЕННОЙ анонимной функции Closure")
handledCup = handleCupurs(wallet: wallet, compare: { item in return item>50}) //  и действительно - ты же при объявлении указывал тип этого входного параметра - зачеим же дублироваться
for item in handledCup
{print(item)}  //КРУТО, ЭТО РАБОТАЕТ

//далее мы можем упростить замыкание. Если в теле всего одно выражение, то и без слово ретерн понятно, что возвращается именно оно
print("попробуем захватить все что больше 50 с помощью БЕЗ РЕТЕРН анонимной функции Closure")
handledCup = handleCupurs(wallet: wallet, compare: { item in item>50}) //  и действительно - ты же при объявлении указывал тип этого входного параметра - зачеим же дублироваться
for item in handledCup
{print(item)}  //КРУТО, ЭТО РАБОТАЕТ


//Дальше пойдет уже дичайший синтаксический сахар и мне кажется это уже ПЕРЕБОР или просто ПОНТЫ

//далее мы можем упростить замыкание. Если в теле всего одно выражение, то доступ к входным параметрам осуществляется через выражения вида $X, где X от 0 до N. в таком случае даже ключевое слово in
print("попробуем захватить все что больше 50 с помощью СУПЕР упрощенной  анонимной функции Closure, использую символ $0")
handledCup = handleCupurs(wallet: wallet, compare: { $0>50}) //  и действительно - ты же при объявлении указывал тип этого входного параметра - зачеим же дублироваться
for item in handledCup
{print(item)}  //КРУТО, ЭТО РАБОТАЕТ. А что так моджно было


//если последний входной параметр в функцию является замыканием - то его можно легко вынести за скобку - такая возможность дана для удобства написания многострочных безымянных функций - попробуем сделать это
//    попробуем сначала так
//handledCup = handleCupurs(wallet: wallet, { $0>50})
//без compare - не работает внутри скубки

//вынос замыканя за скобким. Вынос замыкания за скобки удобен когда код очень длинный и много строк - для удобства чтения
print("вынос замыкания за скобки")
handledCup = handleCupurs(wallet: wallet) { $0>500}
for item in handledCup
{print(item)}  //КРУТО, ЭТО РАБОТАЕТ. А что так моджно было


    /*
     итак начинали с такого кода
     handledCup = handleCupurs(wallet: wallet, compare: compare100) - ПОДСОВЫВАЛИ ИМЯ ДРУГОЙ ФУНКЦИИ С НУЖНОЙ СИГНАТУРОЙ
     
     handledCup = handleCupurs(wallet: wallet, compare: { (item: Int) -> Bool in return item>50})
     ТУТ ПОДСОВЫВАЛИ ЗАМЫКАНИЕ В СУПЕР ЯВНОМ ПОЛНОМ ВИДЕ
     а закончили таким
     
     handledCup = handleCupurs(wallet: wallet) { $0>500}
     ТУТ ОКАЗАЛОСЬ ЧТО ДОСТАТОЧНО НЕСКОЛЬКИХ СИМВОЛОМ
     
     КАК ОКАЗЫВАЕТСЯ ВСЕ ТРИ ВАРИАНТА ЭТО ПОЛНОСТЬЮ РАВНОЗНАЧНЫЕ КОДА - ДУМАЮ ВОПРОС ТОЛЬКО В УДОБСТВЕ
     */

// пример многострочного замыкания вынесенного за скобки в вызове функции

print("вынос замыкания МНОГОСТРОЧНОГО замыкания, которое целяет только нужные банкноты")

//func handleCupurs(wallet: [Int], compare: (Int) -> Bool) -> [Int]
// Так эта функция объявлена

handledCup = handleCupurs(wallet: wallet) {
    banknote in
    for number in Array(arrayLiteral: 100,500)
    {
        if number==banknote {return true}
    }
    return false
}
for item in handledCup
{print(item)}  //КРУТО, ЭТО РАБОТАЕТ. А что так моджно было

//более язящный способ
print("самый язящный на мой взгляд способ")
handledCup = handleCupurs(wallet: wallet) { [50,100].contains($0) }
for item in handledCup
{print(item)}  //КРУТО, ЭТО РАБОТАЕТ. А что так моджно было
