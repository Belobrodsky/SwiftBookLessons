import UIKit

var greeting = "Hello, playground"

enum CurrencyUnit
{
    case rouble, euro
}

var rubleCur = CurrencyUnit.rouble
var eurCur: CurrencyUnit = .euro

enum DollarCountries
{
    case usa
    case canada
    case ausralia
    
}

enum AdvancedCurrencyUnit{
    case rouble(countries: [String], shortName: String)
    case euro(countries: [String], shortName: String)
    case dollar(nation: DollarCountries, shortName: String)
    
    
}

var dollarCurrencyUnit = AdvancedCurrencyUnit.dollar(nation: DollarCountries.usa, shortName: "USD")

switch dollarCurrencyUnit
{
case .rouble: print("Рубль")
case let .euro(countries, shortName): print("Евро. Страны: \(countries). Краткое наименование: \(shortName)")
case .dollar(let nation, let shortName): print("Доллар \(nation). Краткое наименование \(shortName)")
    
}


enum Smile: String {
    case joy = ":)"
    case laugh = ":D"
    case surprise = "o_O"
    
    var description: String {return self.rawValue}
    
    func about() -> Void
    {
        print("Содержит список смайлов")
        
    }
    
    
    func descriptionValue()->Smile { return self}
    func descriptionRawValue()->String {return self.rawValue}
   
}
var otherSmile = Smile.joy;
print(otherSmile.description)
otherSmile.about()
print(otherSmile.descriptionValue())
print(otherSmile.descriptionRawValue())

enum Arithmetic
{
    case sum(Int,Int)
    case substraction(Int,Int)
    
    func eval() -> Int{
        switch self
        {
        case .sum(let a, let b): return a+b
        case .substraction(let a, let b): return a-b
    }
    }
}

var myA = Arithmetic.sum(123, 11)
print("Результат действия - \(myA.eval())")

