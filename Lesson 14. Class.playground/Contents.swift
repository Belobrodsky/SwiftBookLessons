import UIKit

var greeting = "Hello, playground"

class Chessman
{
    enum ChessManTape { case king, queen,castle,bishop,knight,pawn}
    enum ChessColors  {case white, black}
    
 
    let type: ChessManTape
    let color: ChessColors
    var coordinate: (String,Int)? = nil
    let figureSymbol: Character
    
    func setCoord(charCoord: String, intCoord:Int)
    {
        self.coordinate = (charCoord,intCoord)
    }
    
    init(type:ChessManTape,color:ChessColors, figure: Character)
    {
        self.type = type
        self.color = color
        self.figureSymbol=figure
        
    }
    
    init(type:ChessManTape,color:ChessColors, figure: Character, coordinate:(String,Int))
    {
        self.type = type
        self.color = color
        self.figureSymbol=figure
        self.setCoord(charCoord: coordinate.0, intCoord: coordinate.1)
        
    }
    
    func kill()
    {
        self.coordinate = nil
    }
}

/*
 Name    Symbol    Code point    HTML (decimal)    HTML (hex)
 white chess king    ♔    U+2654    &#9812;    &#x2654;
 white chess queen    ♕    U+2655    &#9813;    &#x2655;
 white chess rook    ♖    U+2656    &#9814;    &#x2656;
 white chess bishop    ♗    U+2657    &#9815;    &#x2657;
 white chess knight    ♘    U+2658    &#9816;    &#x2658;
 white chess pawn    ♙    U+2659    &#9817;    &#x2659;
 black chess king    ♚    U+265A    &#9818;    &#x265A;
 black chess queen    ♛    U+265B    &#9819;    &#x265B;
 black chess rook    ♜    U+265C    &#9820;    &#x265C;
 black chess bishop    ♝    U+265D    &#9821;    &#x265D;
 black chess knight    ♞    U+265E    &#9822;    &#x265E;
 black chess pawn    ♟︎    U+265F    &#9823;    &#x265F;

 
 
 
 */

var whiteQueen = Chessman(type: Chessman.ChessManTape.queen, color: Chessman.ChessColors.white, figure: "\u{2655}")
var blackKing = Chessman(type: Chessman.ChessManTape.king, color:Chessman.ChessColors.black,figure: "\u{265A}",coordinate: ("B", 3))

print(whiteQueen.figureSymbol)
print(blackKing.figureSymbol)

 /*
  Реализуем сущность шахматной достки в виде класса в котороре доска представлена в виде вложенного словаря
*/

class GameDesk
{
    var desk: [Int:[String:Chessman]] = [:] //[1..8:[A..H:[ФИГУРАi]]] По извращенски, но вроде норм
    
   subscript(alpha: String, number: Int) -> Chessman?
    {
        
        get {
            return self.desk[number]![alpha]
        }
    }
  
    
    /*
    var someProp: Float{
        get {
            
            return self.someProp;
        }
        set {
           
        }
    }
    */
    
    //Конструктор класс
    init(){
        for i in 1...8 {
            desk[i] = [:] //проинициализруе каждую строчку доске в пустой словарь, чтобы он мог принимать значения
        }
    }
    
// реализуем метод постановики определенной фигуры (экземпляра класса ChessMan выше на эту доску)
    
    func setChessman(chessMan:Chessman, coordinate: (Int,String))
    {
        let rowRange = 1...8
        let colRange = "A"..."H"
        if (rowRange.contains(coordinate.0) && (colRange.contains(coordinate.1)))
        {
            self.desk[coordinate.0]![coordinate.1] = chessMan
            chessMan.setCoord(charCoord: coordinate.1, intCoord: coordinate.0)
        }
        else {
            print("Координаты вне диапазона")
        }
    }
}

if whiteQueen.coordinate != nil {
    print("\(whiteQueen.coordinate!.0) \(whiteQueen.coordinate!.1)")
    }
else {  print("Координата еще пока не установлена");}

if blackKing.coordinate != nil {
    print("\(blackKing.coordinate!.0) \(blackKing.coordinate!.1)")
    }
else {  print("Координата еще пока не установлена");}

print("after set")
var game = GameDesk()
game.setChessman(chessMan: whiteQueen , coordinate: (1, "E"))
game.setChessman(chessMan: blackKing , coordinate: (7, "B"))
print("\(whiteQueen.coordinate!.0) \(whiteQueen.coordinate!.1)");


//ЧТО ДЕЛАТЬ ЕСЛИ NILL И НЕ КРАШИТЬСЯ
print("\(blackKing.coordinate?.0 ?? "A")  \(blackKing.coordinate?.1 ?? -1) ");




game["B",7]!.coordinate
game["B",7]?.coordinate


var aa:Int? = 1

print(aa ?? "nill")



/*
print(game["B",7]!.coordinate.1)
print(game["B",7]?.coordinate.1)
*/


//game.someProp=1.44
//print(game.someProp)
