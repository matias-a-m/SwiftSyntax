//: ## Lección 9 Ejercicios - Closures
import UIKit
import Foundation
//: __Problemas 1 y 2__
//:
//: En los fragmentos de código a continuación, busque dos matrices ordenadas. Para cada una:
//:
//:Crear una nueva matriz ordenada en orden inverso.
//:
//:__b.__
//:Reescriba la expresión de cierre de clasificación para que sea lo más concisa posible.
// 1
var surnames = ["Silverman", "Fey", "Whig", "Schumer", "Kaling"]
let orderedSurnames = surnames.sorted(by: {(name1: String, name2: String) -> Bool in
    return name2 > name1
})
let inversedOrderedSurnames = surnames.sorted(by: {
    $0 > $1
})

// 2
let battingAverages = [0.302, 0.556, 0.280, 0.500, 0.281, 0.285]
let sortedAverages = battingAverages.sorted(by: {(average1: Double, average2: Double) -> Bool in
    return average2 > average1
})
let onversedSortedAverages = battingAverages.sorted(by: {
    $0 > $1
})

//: __Problema 3__
//:
//: El siguiente fragmento de código filtra una matriz para todos los números que son divisibles por 3.
let numbers = [685, 1728, 648, 87, 979, 59175432]
let divisibleByThree = numbers.filter({(number: Int) -> Bool in
    number % 3 == 0
})

//: __3a.__
//:Filtrar la siguiente matriz para los números que son divisibles por 12.
let numbersAsStrings = ["685", "1728", "648", "87", "979", "59175432"]

func getNumbers(stringtext:[String]) -> [Int]{
    let StringRecorderArr = numbersAsStrings
    let divisibleByTwelve = StringRecorderArr.map{ Int($0)!}
    return divisibleByTwelve
}
getNumbers(stringtext: numbersAsStrings).filter({(number: Int) -> Bool in
    number % 12 == 0
})

let divisibleByTwelve = numbersAsStrings.filter({(numberSgtring: String) -> Bool in
    return Int(numberSgtring)! % 12 == 0
})



//: __3b.__
//: Vuelva a escribir la expresión de cierre de filtrado para que sea lo más concisa posible.
let stillDivisibleByTwelve = numbersAsStrings.filter(){
    Int($0)! % 12 == 0
}

//: __Problema 4__
//:
//: Se ha demostrado que filtrar partículas de más de 20 micrones reduce la exposición a patógenos transmitidos por el agua. Filtre la siguiente matriz para todas las partículas de menos de 20 micrones de tamaño. Asigne el resultado a una nueva matriz.
let particleSizesInMicrons = [150, 16, 82, 30, 10, 57]
let filteredparticles = particleSizesInMicrons.filter({
    $0 < 20
    })
filteredparticles

//: __Problema 5__
//:
//: El método Array, map, toma una expresión de cierre como argumento. El cierre se aplica a cada elemento de la matriz, los resultados se asignan a una nueva matriz y se devuelve esa nueva matriz.
//: En el siguiente ejemplo, cada elemento en la matriz de tamaño de partícula en micrones se incorpora a una cadena a la que se agregan unidades.
// Ejemplo
let sizesAsStrings = particleSizesInMicrons.map({ (size: Int) -> String in
    return "\(size) microns"
})
//: Ben acaba de regresar de la India y está contando lo que gastó en regalos para su formulario de aduanas.
//: Use el método map() para transformar esta matriz de precios en dólares. Redondear al dolar mas cercano.
let pricesInRupees = [750, 825, 2000, 725]
let convertToDollars = pricesInRupees.map({(price: Int) -> String in
    let dollars = price/64
    return ("\(dollars)")
})

let currentMoney = convertToDollars
currentMoney

//: __Problema 6__
//:
//: Katie tiene una competencia con sus viejos amigos del equipo de atletismo. Cada persona intenta igualar su tiempo más rápido en la escuela secundaria para la carrera de 1600 m + 1 segundo por cada año desde la graduación.
//:
//:Usar el método map() para transformar los tiempos de carrera de los miembros del grupo. Usando la matriz oldTimes y las dos funciones auxiliares que se proporcionan a continuación, cree una nueva matriz de valores de cadena llamada goalTimes. Supongamos que han pasado 13 años desde la graduación.

func timeIntervalFromString(_ timeString: String) -> Int {
    let timeArray = timeString.components(separatedBy: ":")
    let minutes = Int(String(timeArray[0]))!
    let seconds = Int(String(timeArray[1]))!
    return seconds + (minutes * 60)
}

func timeStringFromInterval(_ timeInterval: Int) -> NSString {
    let seconds = timeInterval % 60
    let minutes = (timeInterval/60) % 60
    return NSString(format: "%.1d:%.2d",minutes,seconds)
}

var oldTimes = ["5:18", "5:45", "5:56", "5:25", "5:27"]

var goalsTime = oldTimes.map(){(time: String) -> String in
    var totalSeconds = timeIntervalFromString(time)
    totalSeconds += 13
    let goalTimeString = timeStringFromInterval(totalSeconds)
    return goalTimeString as String
}
