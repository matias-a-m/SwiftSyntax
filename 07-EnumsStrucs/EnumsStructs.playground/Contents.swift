//: ## Ejercicios de la lección 7 - Enumeraciones y estructuras

//: __Problema 1__
//:
//: Al final del fragmento de código siguiente, ¿cuál es el valor de macchiato.steamedMilk cuando se implementa EspressoDrink como estructura? ¿Qué pasa cuando EspressoDrink se implementa como una clase?
enum Amount {
    case none
    case splash
    case some
    case alot
}

struct EspressoDrink {
    let numberOfShots: Int
    var steamedMilk: Amount
    let foam: Bool
    
    init(numberOfShots: Int, steamedMilk: Amount, foam: Bool) {
        self.numberOfShots = numberOfShots
        self.steamedMilk = steamedMilk
        self.foam = foam
    }
}

var macchiato = EspressoDrink(numberOfShots: 2, steamedMilk: .none, foam: true)
var espressoForMatías = macchiato
espressoForMatías.steamedMilk = .splash
macchiato.steamedMilk

// Solución
// si EspressoDrink es una estructura, macchiato.steamedMilk == .none
// si EspressoDrink es una clase, macchiato.steamedMilk == .splash

//: __Problema 2__
//:
//: __2a.__
//: Escriba una enumeración para representar los cinco dedos de una mano humana.
//:
//: __2b.__
//: Asociar un valor Int con cada dedo.
//: __Problema 2__
//:
enum fingersOfHand:Int{
    case thumb, index, middle, ring, pinky
}

//: __Problema 3__
//:
//: ¿Enumeración, clase o estructura?
//:
//: elimine los comentarios del código a continuación y elija si cada tipo debe ser una enumeración, una clase o una estructura.
struct Window {
    let height: Double
    let width: Double
    var open: Bool
}

enum WritingImplement {
    case pen
    case pencil
    case marker
    case crayon
    case chalk
}

struct Material {
    let name: String
    let density: Double
    let stiffness: Double
}


struct Bicycle {
    let frame: Material
    let weight: Double
    let category: String

    static var bikeCategories: [String] = ["Road", "Touring", "Mountain", "Commuter", "BMX"]

    func lookCool() {
        print("Check out my gear-shifters!")
    }
}

class Cyclist {
    var speed: Double
    let agility: Double
    let bike: Bicycle

    var maneuverability: Double {
        get {
            return agility - speed/5
        }
    }

    init(speed: Double, agility: Double, bike: Bicycle) {
        self.speed = speed
        self.agility = agility
        self.bike = bike
    }

    func brake() {
        speed -= 1
    }

    func pedalFaster(factor: Double) {
        speed * factor
    }
}

enum Size: String {
    case small = "8 ounces"
    case medium = "12 ounces"
    case large = "16 ounces"
}

//: __Problema 4__
//:
//: Escribir una estructura de cookie.
//:
//: __4a.__
//: Incluir 2 propiedades almacenadas. Los ejemplos pueden incluir una cadena que represente el sabor o un int que represente minutesSinceRemovalFromOven.

    

//:__4b.__
//: Agregue una propiedad calculada, "delicious", un bool cuyo valor depende de los valores de las propiedades almacenadas.

//:__4c.__
//:Incluye un método. Por ejemplo, el método tempt() podría devolver o imprimir una indicación de una persona tentada a comerse la galleta.

//: __4d.__
//: Cree una instancia de su estructura de Cookie y llame a su método.
struct Cokkie{
    // 4.a
    let flavor: String
    let minutesSinceRemovalFromOven: Int
    
    // 4.b
    var delicious: Bool{
        get {
            if flavor == "Chocolate Chips" || (minutesSinceRemovalFromOven < 30){
                return true
            }
            else{
                return false
            }
        }
    }
    
    func temp(){
        if delicious{
            print("I´ll just have one more.")
        }
        else{
            print("I really shouldn´t.")
        }
    }
}

//: __Problema 5__
//:
//: Escriba una clase para representar un listado de Bed and Breakfast.
//:
//: __5a.__
//: Incluir 3 propiedades almacenadas. Los ejemplos pueden incluir una categoría que represente el tipo de vivienda, es decir, apartamento o casa, o un bool que represente la disponibilidad.

//: __5b.__
//: Considere escribir una enumeración auxiliar e incorporarla como una de sus propiedades.

//: __5c.__
//: Incluir al menos un método. Por ejemplo, el método book() podría alternar el bool de disponibilidad o devolver una confirmación de reserva.

//: __5d.__
//: Cree una instancia de su clase BnBListing y llame a uno de sus métodos.
enum Housing{
    case mansion, apartment, shack, house
}

class BnBListing{
    let category: Housing
    let capacity: Int
    var available: Bool
    
    init(category: Housing,price:Int, capacity: Int, available: Bool){
        self.category = category
        self.capacity = capacity
        self.available = available
    }
    
    func book(){
        self.available = false
        print("Reservation confirmed!")
    }
}

let beachBongalow = BnBListing(category: .shack, price: 20, capacity: 2, available: true)
beachBongalow.book() 
beachBongalow.available
