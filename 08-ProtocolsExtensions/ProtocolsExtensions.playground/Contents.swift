//: ## Lección 8 Ejercicios - Protocols & Extensions

import UIKit
import Foundation

//: __Problema 1__
//:
//: Abajo encuentra la clase Adolescente junto con el protocolo Niñera.
//:
//: __1a.__ Edita la clase Teenager para que adopte el protocolo Babysitter.
//:
//: __1b.__ Implementar los métodos necesarios para que la clase Teenager se ajuste al protocolo Babysitter.
//:
//: __1c.__ Pruebe su código creando una instancia de la clase Teenager y llamando a los métodos playCandyland() y read().

enum Level {
    case low
    case medium
    case high
}

class Teenager: Babysitter{
    
    var age: Int
    let responsible: Bool
    let patience: Level
    
    init(age: Int, responsible: Bool, patience: Level) {
        self.age = age
        self.responsible = responsible
        self.patience = patience
    }
    
    // 1.b
    func playCandyland(_ numberOfTimes: Int) {
       var count = 0
        while count < numberOfTimes{
            print("We arrived at the Candy Castle!")
            count += 1
        }
    }
    
    func read(_ book: String, firstLine: String, asleep: Bool) -> Bool {
       print("Of course, we can read \(book) again. \(firstLine)...")
        var isAsleep = asleep
        isAsleep = true
        return isAsleep
    }
}

protocol Babysitter {
    func playCandyland(_ numberOfTimes: Int)
    func read(_ book: String, firstLine: String, asleep: Bool) -> Bool
}

// 1.c
var bestBabysitter = Teenager(age: 15, responsible: true, patience: .high)
bestBabysitter.playCandyland(2)
bestBabysitter.read("Vertle the Turtle", firstLine: "En la lejana isla de Sala-ma-son, Yertle la Tortuga era el rey del estanque", asleep: false)

//: __Problema 2__
//:
//:Abajo encuentra la clase Animal junto con el protocolo Adorable.
//:
//: __2a.__ Edita la clase Animal para que adopte el protocolo Adorable.
//:
//: __2b.__ Agregue los métodos y propiedades necesarios para que la clase Animal se ajuste al protocolo Adorable.
//:
//: __2c.__ Pruebe su código creando una instancia de la clase Animal y llamando a los métodos frolick() y curlIntoSmallBall().
enum Size {
    case tiny, small, medium, large, xLarge
}
protocol Adorable {
    var size: Size { get }
    var softFur: Bool { get }
    
    func frolick()
    func curlIntoSmallBall()
}

var cuteMouse = UIImage(named: "mouseBall")

class Animal: Adorable{
    
    let species: String
    let numberOfLegs: Int
    
    var size = Size.tiny
    var softFur = true
    
    init(species: String, numberOfLegs: Int) {
        self.species = species
        self.numberOfLegs = numberOfLegs
    }
    
    func frolick() {
        print("¡Mírame saltar en este montón de hojas!")
    }
    
    func curlIntoSmallBall() {
        print("¿Quién sabía que acariciar tu propio botín era tan encantador?")
        
    }
}
var pic = UIImage(named: "frolick.jpg")

var animal = Animal(species: "dog", numberOfLegs: 4)
animal.softFur
animal.frolick()

//: __Problema 3__
//:
//: Debajo encontrarás la clase Amigo. La clase Friend ha implementado el protocolo Mover, pero el protocolo Mover se eliminó accidentalmente.
//:
//: __3a.__
//: Basándose en lo que ve en la clase Friend, reescriba lo que cree que sería en el protocolo Mover.
//:
//: __3b.__ Edite la clase Friend para que adopte el protocolo Mover.
protocol Move{
    var willWorkForPizzaAndBeer: Bool { get }
    
    func carryCouch() -> String
    
    func loadVan(_ empty: Bool) -> Bool
}

class Friend: Move {
    var reliability: Int
    var likesYou: Bool
    
    var willWorkForPizzaAndBeer = true
    
    init (reliability: Int, likesYou: Bool, willWorkForPizzaAndBeer: Bool) {
        self.reliability = reliability
        self.likesYou = likesYou
        self.willWorkForPizzaAndBeer = willWorkForPizzaAndBeer
    }
    
    func goHiking() -> String {
        return "Let's go to the Redwoods!"
    }
    
    func comeOverForDinner() -> String {
        return "Your stew is the best!"
    }
    
    func carryCouch() -> String {
        return "Here, I'll walk backwards down the stairs and hold the heavy end."
    }
    
    func loadVan(_ empty: Bool) -> Bool {
        print("We can totally fit a king size bed in here.")
        var isEmpty = empty
        isEmpty = false
        return isEmpty
    }
}

//: Problema 4
//:
//: A continuación puede ver que la clase Squirrel se ajusta al protocolo Hoarder.
//: Edite la clase ScrubJay para que también se ajuste al protocolo Hoarder.
struct Tail {
    let lengthInCm: Double
    let bushiness: Int
}

protocol Hoarder {
    func cache(_ foodItem: String) -> String
    func pilfer() -> String
}

class Squirrel: Hoarder {
    let justTryinToGetANut = true
    let bushyTail: Tail
    
    init(bushiness: Int, length: Double) {
        self.bushyTail = Tail(lengthInCm: 20.0, bushiness: 10)
    }
    
    func scurry() -> String {
        return "Run away!"
    }
    
    func cache(_ foodItem: String) -> String {
        return "I'll be back for you later, little \(foodItem)s."
    }
    
    func pilfer() -> String {
        return "Jackpot! Your stash is mine!"
    }
    
}

class ScrubJay: Hoarder{
    

    let wings = 2
    let female: Bool
    
    init(female: Bool) {
        self.female = female
    }
    
    func fly() -> String {
        return "Swoop!"
    }
    
    func cache(_ foodItem: String) -> String {
        return "I'll be back for you later, little \(foodItem)s."
    }
    
    func pilfer() -> String {
        return "Jackpot! Your stash is mine!"
    }
    
}
//: __Problema 5__
//:
//: Las extensiones se pueden usar para adherirse a los protocolos. En el siguiente ejemplo, la clase Roommate adopta y se adhiere al protocolo Souschef a modo de extensión. Agregue una extensión a la clase Minion para que Minion adopte el protocolo DirtyDeeds.

// Ejemplo
protocol Souschef {
    func chop(_ vegetable: String) -> String
    func rinse(_ vegetable: String) -> String
}

class Roommate {
    var hungry = true
    var name: String
    
    init(hungry: Bool, name: String) {
        self.hungry = hungry
        self.name = name
    }
}

extension Roommate: Souschef {
    func chop(_ vegetable: String) -> String {
        return "She's choppin' \(vegetable)!"
    }
    
    func rinse(_ vegetable: String) -> String {
        return "The \(vegetable) is so fresh and so clean"
    }
}

//: Extienda la clase Minion para que se ajuste al protocolo DirtyDeeds.
protocol DirtyDeeds {
    func cheat()
    func steal()
}

class Minion {
    var name: String
    
    init(name:String) {
        self.name =  name
    }
}

extension Minion:DirtyDeeds {
    func cheat() {
        print("Mwa ha ha!")
    }
    
    func steal() {
        print("Mwa ha ha!")
    }
}

var newM = Minion(name: "minion")
newM.cheat()

//: __Problem 6__
//:
//: Esta extensión del [Coding Explorer Blog](http://www.codingexplorer.com/swift-extensions/) facilita la inicialización de un objeto UIColor a partir de valores RGB que son enteros.
//:
//: __6a.__
//: Supongamos que está escribiendo una aplicación que utiliza con frecuencia el color pistacho. Escriba un método de clase que devuelva un objeto UIColor para el cual R = 147, G = 197 y B = 114. Agregue ese método a la extensión UIColor a continuación.
//:
//: __6b.__
//: Demuestre cómo llamaría al método pistacho().
extension UIColor
{
    convenience init(redValue: Int, greenValue: Int, blueValue: Int)
    {
        let newRed   = CGFloat(Double(redValue) / 255.0)
        let newGreen = CGFloat(Double(greenValue) / 255.0)
        let newBlue  = CGFloat(Double(blueValue) / 255.0)
        
        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: CGFloat(1.0))
    }
    
    class func pistachio() -> UIColor{
        return UIColor(redValue: 147, greenValue: 197, blueValue: 114)
    }
}

UIColor.pistachio()





