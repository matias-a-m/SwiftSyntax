//: # Lección 1 Ejercicios
//: ## Manipulation de Strings
import UIKit
import Foundation

//: ### Ejercicio 1
//: Ejemplo: Aquí he declarado una Cadena que forma una oración que tiene sentido. He declarado una segunda Cadena que forma una oración tonta cuando se eligen palabras al azar.
let nounArray = ["puppy", "laptop", "ocean","app", "cow", "skateboard", "developer", "coffee", "moon"]

let index1 = Int(arc4random() % 9)
let index2 = Int(arc4random() % 9)

let sentence = "The \(nounArray[6]) spilled her \(nounArray[7])."
let  sillySentence = "The \(nounArray[index1]) jumped over the \(nounArray[index2])."

//: Declare una nueva cadena que incorpore objetos de la matriz de nombres anterior. Escribe una oración que tenga sentido y una oración "Madlib" con palabras elegidas al azar. Siéntase libre de agregar palabras a la matriz de sustantivos o declarar una nueva matriz.
let yourSentence =  ["puppy", "laptop", "ocean","app", "cow", "skateboard", "developer", "coffee", "moon"]

let randomItem1 = Int(arc4random() % 3)
let randomItem2 = Int(arc4random() % 5)

let yourSillySentence = "The \(yourSentence[randomItem1]) jumped over the \(yourSentence[randomItem2])"

//: ### Ejercicio 2
//: Vuelva a crear shoutString utilizando didYouKnowString como raíz.
let didYouKnowString = "¿Sabía que la clase Swift String viene con muchos métodos útiles?"
let whisperString = "psst" + ", " + didYouKnowString.lowercased()
let shoutString =  didYouKnowString.uppercased()

//: ### Ejercicio 3
//: ¿Cuántos caracteres hay en esta cadena?
let howManyCharacters = "How much wood could a woodchuck chuck if a woodchuck could chuck wood?"
howManyCharacters.count

//: ### Ejercicio 4
//: ¿Cuántas veces aparece la letra "g" o "G" en la siguiente cadena? ¡Use un bucle for-in para averiguarlo!
let gString = "Gary's giraffe gobbled gooseberries greedily"
var count = 0

for countGs in gString {
    if countGs == "g" || countGs == "G"{
        count += 1
    }
}
print("hay un total de \(count) letras g y G.")
//: ### Ejercicio 5
//: Escriba un programa que le diga si esta cadena contiene o no la subcadena "tuna".
let word = "fortunate"

if word.range(of: "tuna") != nil {
    print("yes")
}

//: ### Ejercicio 6
//: Escriba un programa que elimine todas las apariciones de la palabra "like" en la siguiente cadena.
let lottaLikes = "If like, you wanna learn Swift, like, you should build lots of small apps, cuz it's like, a good way to practice."

let noLikes = lottaLikes.replacingOccurrences(of: "like, ", with: "")
print(noLikes)
//: ### Ejercicio 7
// Example
let sillyMonkeyString = "A monkey stole my iPhone"
let newString = sillyMonkeyString.replacingOccurrences(of: "monkey", with: "🐒")
let newerString = newString.replacingOccurrences(of: "iPhone", with: "📱")
//: Repita la manipulación de cadenas anterior, pero esta vez usando un bucle for-in.
//: Puede comenzar con este diccionario y cadena.
let dictionary = ["monkey": "🐒", "iPhone":"📱"]
var newestString = sillyMonkeyString

for (key, value) in dictionary {
    newestString = newestString.replacingOccurrences(of: key, with: value)
}

//: ### Ejercicio 8
//: Josie ha estado ahorrando sus centavos y los ha contado todos. Escriba un programa que, dada una cantidad de centavos, imprima cuánto dinero tiene Josie en dólares y centavos.
// Example
let numOfPennies = 567
//desired output = "$5.67"
//Solution
let dollarInt = numOfPennies/100
let dollarString: String = "$" + "\(dollarInt)" + "."
let centsString: String =  String(numOfPennies % 100)
let finalString = dollarString + centsString

//: # Let o Var?
//: ### Ejercicio 9
//: A continuación se muestra el código para encontrar todos los números presentes en una matriz, convertirlos a enteros y calcular su suma. Eche un vistazo a las entidades declaradas a continuación: array, sum e intToAdd. Piensa si cada uno debe ser una constante o una variable y elige si declararlos con let o var. Cuando haya terminado, descomente el código y vea si el compilador está de acuerdo con sus elecciones.
 let array = ["A", "13", "B","5","87", "t", "41"] // TODO: Choose constant or variable
 var sum = 0 // TODO: Choose constant or variable
 for string in array {
     if Int(string) != nil {
         let intToAdd = Int(string)! // TODO: Choose constant or variable
         sum += intToAdd
     }
 }
 print(sum)

//: ### Ejercicio 10
//: Para cada uno de los siguientes pares, elija si desea declarar una constante o una variable.
//:
//: Ejemplo: Dos excursionistas suben a la cima de una montaña. En el camino, se detienen varias veces para verificar su elevación actual.
//:
//: Example response:
let summitElevation: Int
var currentElevation: Int
//: 10a) Imagina que estás escribiendo una aplicación de prueba y necesitas programar un temporizador que detenga una prueba después de 20 minutos. Declare cuatro entidades: startTime, currentTime, maximumTimeAllowed y timeRemaining. No se preocupe por codificar sus valores.

// startTime
let startTime: Date

// currentTime
let maximumTimeAllowed: Double

// tiempo máximo permitido
var currentTime: Date

// tiempo restante
var timeRemaining: Double

//: 10b) Imagina que estás escribiendo una aplicación para una compañía de tarjetas de crédito. Declara dos entidades: creditLimit y balance.

let creditLimit:Double
var balance:Double

//: ### Ejercicio 11
//: A continuación se muestra el código para invertir una cadena. Echa un vistazo a las entidades declaradas: stringToReverse y reversedString. Elija si desea declarar cada uno con let o var. Cuando haya terminado, descomente el código y vea si el compilador está de acuerdo con sus elecciones.

let stringToReverse = "¿Mutable o inmutable? Esa es la cuestión"
var reversedString = ""
for character in stringToReverse {
    reversedString = "\(character)" + reversedString
}
print(reversedString, terminator: "")





