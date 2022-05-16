//: # Lección 4 Ejercicios - Control Flow

import UIKit

//: ## Enumeración rápida con for-in
//: ### Ejercicio 1
//: Para cada título en la matriz, imprima la siguiente cadena: "título + con títeres", por ejemplo, "¡Star Wars con títeres!"
var movieTitleArray = ["Point Break", "The Dark Knight", "Star Wars", "When Harry Met Sally"]

for movie in movieTitleArray{
    print("\(movie) witch Puppets!")
}
//: ### Ejercicio 2
//: El alquiler está aumentando un 20% este año. Utilice un bucle for-in para aplicar este aumento a cada elemento de la matriz oldMountainViewRent. Almacene los nuevos valores en la matriz newMountainViewRent.
var oldMountainViewRent:[Double] = [2150, 1775, 2221, 1261, 1325, 2110, 1870]
var newMountainViewRent = [Double]()

for rent in oldMountainViewRent{
    newMountainViewRent.append(rent * 1.20)
}
print(newMountainViewRent)

//: ### Ejercicio 3
//: Para cada alimento con un valor verdadero, imprima "<comida>, ¡mmm!" Para cada comida con un valor falso, imprima "<comida>, ¡qué asco!"
var polarizingFoods = ["Anchoas":true, "Coco":true, "Zapallo":true, "Higado": false]

for (food, preference) in polarizingFoods{
    if preference {
        print("\(food), mmm!")
    }
    else{
        print("\(food), ¡qué asco!")
    }
}
//: ### Ejercicio 4
//: El código de área de Oakland está cambiando de 415 a 510. Reemplace todas las apariciones del código de área 415 con 510 en el diccionario a continuación.
var rapperPhoneNumbers = ["Azealia Banks":"(212)548-8777", "Boots Riley":"(415)755-9887", "MC Hammer":"(415)533-9899", "Missy Elliot":"(757)488-5552", "Shock G":"(415)499-7676", "Sir Mix-a-lot":"(206)123-4567", "Snoop Dogg":"(213)760-6664"]

for (name, digits) in rapperPhoneNumbers{
    rapperPhoneNumbers[name] = digits.replacingOccurrences(of: "415", with: "510")
}
print(rapperPhoneNumbers)

//: ## Sentencias de cambio
//: Traduzca las siguientes sentencias if-else en sentencias switch. Siéntase libre de modificar las declaraciones de impresión como desee.
//: ### Ejercicio 5
//: A continuación se muestra una declaración if que determina a qué equipo animar dado un deporte.
enum Sport {
    case baseball, basketball, football, hockey, soccer
}

var sport = Sport.baseball

if sport == .baseball {
    print("Go A's!")
} else if sport == .basketball {
    print("Go Warriors!")
} else if sport == .football {
    print( "Go Raiders!")
} else if sport == .hockey {
    print("Go Sharks!")
} else if sport == .soccer {
    print("Go Earthquakes!")
}

switch sport{
case .baseball:
    print("Go A's!")
case .basketball:
    print("Go Warriors!")
case .football:
    print( "Go Raiders!")
case .hockey:
    print("Go Sharks!")
case .soccer:
    print("Go Earthquakes!")
}

//: ### Ejercicio 6
//: A continuación se muestra una enumeración y una instrucción if-else para implementar el juego Piedra, Papel o Tijera.
enum roshamboMove {
    case rock, paper, scissors
}

var myMove = roshamboMove.scissors
var yourMove = roshamboMove.scissors

var resultsMessage = ""

if myMove == .rock && yourMove == .paper || myMove == .paper && yourMove == .rock {
    resultsMessage = "Paper covers Rock."
} else if myMove == yourMove {
    resultsMessage = "It's a tie!"
} else if myMove == .rock && yourMove == .scissors || myMove == .scissors && yourMove == .rock {
    resultsMessage = "Rock crushes Scissors. "
} else if myMove == .paper && yourMove == .scissors || myMove == .scissors && yourMove == .paper {
    resultsMessage = "Scissors cut Paper."
}

switch (myMove, yourMove) {
case (.rock, .paper), (.paper, .rock):
    resultsMessage = "Paper covers Rock."
case (.rock, .rock), (.paper, .paper), (.scissors, .scissors):
    resultsMessage = "It's a tie!"
case (.rock, .scissors), (.scissors, .rock):
    resultsMessage = "Rock crushes Scissors."
case (.paper, .scissors), (.scissors, .paper):
    resultsMessage = "Scissors cut Paper."
}

//: ### Ejercicio 7
//: A continuación se muestra una declaración if-else que hace coincidir la puntuación de una tarea con una calificación de letra.
var score = 97
var letterGrade = ""

if 90...100 ~= score {
    letterGrade = "A"
} else if 80...89 ~= score {
    letterGrade = "B"
} else if 70...79 ~= score {
    letterGrade = "C"
} else if 60...69 ~= score {
    letterGrade = "D"
} else {
    letterGrade = "Incomplete"
}

switch score {
case 90...100:
    letterGrade = "A"
case 80...89:
    letterGrade = "B"
case 70...79:
    letterGrade = "C"
case 60...69:
    letterGrade = "D"
default:
    letterGrade = "Incomplete"
}
//: ### Ejercicio 8
//: La instrucción if-else a continuación traduce una palabra al latín cerdo. Sin usar la matriz de "vocales", escriba una declaración de cambio equivalente.
var word = "can"
var firstLetter = word[word.startIndex]
var newWord = ""
var vowels: [Character] = ["a", "e", "i", "o", "u"]

if vowels.contains(firstLetter) {
    newWord = word + "yay"
} else {
    word.remove(at: word.startIndex)
    newWord = "\(word)\(firstLetter)ay"
}

word = "can"

switch firstLetter{
case "a","e","i","o","u":
    newWord = "yay"
default:
    word.remove(at: word.startIndex)
    newWord = "\(word)\(firstLetter)"
}

