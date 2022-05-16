//: ## Ejercicios de la Lección 6 - Clases, Propiedades y Métodos

import UIKit
import Darwin

//: __Problema 1__
//:
//: __1a.__
//: El compilador se queja porque la clase Animal no tiene inicializadores. Escriba un método init para la clase Animal y silencie este error. Incluya un mecanismo para inicializar la longitud de la cola del Animal utilizando la estructura Tail proporcionada.
struct Tail {
    let lengthInCm: Double
}

class Animal {
    var species: String = ""
    let tail: Tail
    
    init(species: String, tailLength: Double){
        self.species = species
        self.tail = Tail(lengthInCm: tailLength)
    }
}

//: __1b.__
//: Instanciar e inicializar algunos animales diferentes.
var kanga = Animal(species: "red kangaroo", tailLength: 100)
kanga.species
var gator = Animal(species: "American alligator", tailLength: 150)
gator.tail.lengthInCm
var beaver = Animal(species: "North American beaver", tailLength: 30)

//: __Problema 2__
//:
//: A continuación se muestran los inicios de la clase Peach.
class Peach {
    let variety: String
    
    // La suavidad se califica en una escala del 1 al 5, siendo 5 la más suave
    var softness: Int
    
    // 2.a
    static let varieties = ["donut", "yellow", "white"]
    
    init(variety: String, softness: Int) {
        self.variety = variety
        self.softness = softness
    }
    
    // 2.b
    func ripen(){
        self.softness += 1
        if self.softness > 4{
            print("Eat me!")
        }
        else{
            print("Give me a little more time.")
        }
    }
}

//: __2a.__
//: Agregue una propiedad de tipo a la clase Peach llamada "variedades". Debe contener una variedad de diferentes tipos de duraznos.
//:
//: __2b.__
//: Agrega un método de instancia llamado ripen() que aumenta el valor de la propiedad almacenada, suavidad, y devuelve una cadena que indica si el melocotón está maduro.
//:
//: __2c.__
//: Crea una instancia de la clase Peach y llama al método ripen().
var sweetPeach = Peach(variety: "donut", softness: 4)
sweetPeach.ripen()

//: __Problema 3__
//:
//: __3a.__
//:Agregue la propiedad computada, "cuddlability", a la clase, FluffyDog. La capacidad de acurrucarse debe calcularse en función de los valores de las propiedades almacenadas, la esponjosidad y el factor de baba.
//var theFluffiestDog = UIImage(named:"fluffyDog")!
class FluffyDog {
    let name: String
    let fluffiness: Int
    let droolFactor: Int
    
    //3.a
    var cuddlability:Int{
        get{
            return self.fluffiness - self.droolFactor
        }
    }
    
    init(name: String, fluffiness: Int, droolFactor: Int) {
        self.name = name
        self.fluffiness = fluffiness
        self.droolFactor = droolFactor
    }
    
    func chase(_ wheeledVehicle: String)-> String {
        return "Adónde vas, \(wheeledVehicle)? ¡Espérame! ¡No, no te vayas! ¡Te atraparé!"
    }
}
//: __3b.__
//: Crea una instancia e inicializa una instancia de la clase, FluffyDog. Úselo para llamar al método chase().
var goodDog = FluffyDog(name: "Zebedee", fluffiness: 10, droolFactor: 4)
goodDog.cuddlability
goodDog.chase("skateboarder")

//: __Problema 4__
//:
//: __4a.__
//: escriba un método de instancia, bark(), que devuelva una cadena diferente según el valor de la propiedad almacenada, tamaño.
enum Size: Int {
    case small
    case medium
    case large
}

class ChattyDog {
    let name: String
    let breed: String
    let size: Size
    
    init(name: String, breed: String, size: Size) {
        self.name = name
        self.breed = breed
        self.size = size
    }
    
    // 4.a
    func bark(_ size:Size) -> String{
        switch size{
        case .small:
            return "yip yip"
        case .medium:
            return "arf arf"
        case .large:
            return "woof woof"
        }
    }
    
    // 4.c
    static func speak(_ size:Size) -> String{
        switch size{
        case .small:
            return "yip yip"
        case .medium:
            return "arf arf"
        case .large:
            return "woof woof"
        }
    }
}

//: __4b.__
//: Cree una instancia de ChattyDog y utilícela para llamar al método, bark().
//: __4c.__
//: Reescriba el método, bark(), como un método de tipo y renómbrelo speak(). Llame a su método de tipo para probarlo.
// 4.b & 4.c
var barkingDog = ChattyDog(name:"Kupar", breed: "Schnauser", size: .medium)
barkingDog.bark(barkingDog.size)
ChattyDog.speak(.medium)

//: __Problema 5__
//:
//:__5a.__
//: Escriba un método de inicialización para la clase House.
enum Quality {
    case poor, fair, good, excellent
}

enum NaturalDisaster {
    case earthquake
    case wildfire
    case hurricane
}

class House {
    var numberOfBedrooms: Int = 0
    let location: Quality
    
    // 5.c
    var worthyOfAnOffer: Bool{
        get {
            switch(numberOfBedrooms, location){
            case (2, .excellent), (3, .good), (3, .excellent):
                return true
            default:
                return false
            }
        }
    }
    
    // 5.a
    init(numberOfBedrooms: Int, location: Quality) {
        self.numberOfBedrooms = numberOfBedrooms
        self.location = location
    }
    
    func willStayStanding(_ naturalDisaster:NaturalDisaster)-> Bool {
        switch naturalDisaster {
        case .earthquake:
            return true
        case .wildfire:
            return true
        case .hurricane:
            return false
        }
    }
}

//: __5b.__
//: Cree una instancia de la clase House y utilícela para llamar al método willStayStanding(). Este método toma un parámetro de tipo NaturalDisaster y devuelve un Bool que indica si la casa permanecerá en pie en un desastre natural determinado.
let dreamHouse = House(numberOfBedrooms: 3, location: .excellent)
dreamHouse.willStayStanding(.earthquake)
dreamHouse.worthyOfAnOffer

//: __5c.__
//: Agregue una propiedad calculada llamada "worthyOfAnOffer". Esta propiedad debe ser un Bool, cuyo valor devuelto depende de alguna combinación de las propiedades almacenadas, el número de dormitorios y la ubicación.






