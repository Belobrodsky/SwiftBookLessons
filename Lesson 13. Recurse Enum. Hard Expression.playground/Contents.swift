import UIKit
import Foundation

var greeting = "Hello, playground"


enum ArichmeticEnumExpression
{
 case number(Int)
    
indirect case addition(ArichmeticEnumExpression,ArichmeticEnumExpression)
indirect case substraction(ArichmeticEnumExpression,ArichmeticEnumExpression)
    
    // в качестве параметра испльзуем опционал со значением по умолчанию = nil
    func evaluate(_ expression: ArichmeticEnumExpression? = nil) -> Int
    {
        
        //Знак вопроса означает, что ести expression == null,  то присвоить ему значение  self
        switch expression ?? self
        {
        case let .number(value): return value
        case let .addition(valueLeft, ValueRight): return evaluate(valueLeft) + evaluate(ValueRight)
        case let .substraction(valueLeft, valueRigth): return evaluate(valueLeft) - evaluate(valueRigth)
        }
    }
}

var aExp = ArichmeticEnumExpression.addition(.number(10), .substraction(.number(1), .number(4)))
print(aExp.evaluate())

// можно еще круче
 aExp = ArichmeticEnumExpression.addition(.number(10), .substraction(.substraction(.number(1), .number(4)), .number(4)))
print(aExp.evaluate())


//более простой способ без лишних символомс
enum ArichmeticEnumExpression2
{
 case number(Int)
    
indirect case addition(ArichmeticEnumExpression,ArichmeticEnumExpression)
indirect case substraction(ArichmeticEnumExpression,ArichmeticEnumExpression)
    
    // в качестве параметра испльзуем опционал со значением по умолчанию = nil
    func evaluate(_ expression: ArichmeticEnumExpression) -> Int
    {
        
        //Знак вопроса означает, что ести expression == null,  то присвоить ему значение  self
        switch expression
        {
        case let .number(value): return value
        case let .addition(valueLeft, ValueRight): return evaluate(valueLeft) + evaluate(ValueRight)
        case let .substraction(valueLeft, valueRigth): return evaluate(valueLeft) - evaluate(valueRigth)
        }
    }
}

 aExp = ArichmeticEnumExpression.addition(.number(10), .substraction(.number(1), .number(4)))
print(aExp.evaluate(aExp))
