import Foundation

var greeting = "Hello, playground"



var isExit = false



repeat
{
    
guard let myInt = Int(readLine()!) else {
    print("что-то пошло не так")
    continue
}
    print("Type 0 for exit")
    
    if myInt == 0 {isExit=true}
    
}
while !isExit
