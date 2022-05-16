//: # Lección 3 Ejercicios - Colecciones
import UIKit

//: ## Inicialización de un Array

//: ### Ejercicio 1
//: 1a) Inicialice la matriz, cuteAnimals. Debe ser del tipo CuddlyCreature. Escriba su respuesta a continuación.
var cuteAnimals = [CuddlyCreature]()

//: 1b) Inicialice una matriz de 5 booleanos utilizando la sintaxis literal de matriz.
var boolArray = [true, true, true, false, false]

//: ## Operaciones de matriz: contar, insertar, agregar, eliminar, recuperar con subíndice
//: ### Ejercicio 2
//: Imprime el número de perros de aguas en la matriz a continuación.
var spaniels = ["American Cocker", "Cavalier King Charles", "English Springer", "French", "Irish Water","Papillon", "Picardy","Russian", "French", "Welsh Springer"]
spaniels.count

//: ### Ejercicio 3
//: Inserte "índigo" en la matriz a continuación para que su índice esté después de "azul" y antes de "violeta".
var colors = ["red", "orange", "yellow", "green", "blue", "violet"]
colors.insert("índigo", at: 5)
colors

//: ### Ejercicio 4
//: Inserte "English Cocker" en la matriz de spaniels para que su índice esté antes de "English Springer".
spaniels.insert("English Cocker", at: 2)

//: ### Ejercicio 5
//: Añadir "Barcelona" al final de la matriz olympicHosts.
var olympicHosts = ["London", "Beijing","Athens", "Sydney", "Atlanta"]
olympicHosts.append("Barcelona")

//: ### Ejercicio 6
//: Eliminar "Lyla" y "Daniel" de la matriz de lista de espera y agregarlos al final de la matriz admitida.
var admitted = ["Jennifer", "Vijay", "James"]
var waitingList = ["Lyla", "Daniel", "Isabel", "Eric"]
var capturedLyla = waitingList.remove(at: 0)
var capturedDaniel = waitingList.remove(at: 0)
waitingList
admitted.append(capturedLyla)
admitted.append(capturedDaniel)

//: ### Ejercicio 7
//: Usando la sintaxis de subíndices, imprima el segundo y tercer nombre de la matriz admitida.
print("El segundo nombre es \(admitted[1]) y el tercer nombre es \(admitted[2])")

//: ## Inicialización del diccionario
//: ### Ejercicio 8
//: a) Inicialice un diccionario vacío que contenga cadenas como claves y valores booleanos.
var emptyDic = [String: Bool]()

//: b) Inicialice un diccionario utilizando la sintaxis literal de matriz. Las claves deben ser las Cadenas: "Anchoas", "Coco", "Cilantro", "Hígado" y cada valor debe ser un Bool que represente si te gusta la comida o no.
var comidaPolarizante = ["Anchoas": true, "Coco": true, "Cilantro": true, "Liver": false]

//: ## Operaciones de diccionario: contar, insertar, eliminar, actualizar, recuperar con subíndice
//: ### Ejercicio 9
//: inserte una entrada para George H.W. Bush al diccionario de abajo.
var presidentialPetsDict = ["Barack Obama":"Bo", "Bill Clinton": "Socks", "George Bush": "Miss Beazley", "Ronald Reagan": "Lucky"]

//salida deseada
// ["Barack Obama":"Bo", "George Bush": "Miss Beazley","Bill Clinton": "Calcetines", "George H. W. Bush": "Millie", "Ronald Reagan": "Lucky"]
presidentialPetsDict["George W. H. Bush"] = "Millie"
print(presidentialPetsDict)

//: ### Ejercicio 10
//: Elimine la entrada para "George Bush" y reemplácela con una entrada para "George W. Bush".
var oldValue = presidentialPetsDict.removeValue(forKey: "George Bush")
presidentialPetsDict["George W. Bush"] = oldValue
print(presidentialPetsDict)

//: ### Ejercicio 11
//: Inicializamos un nuevo diccionario de perros presidenciales con las entradas de mascotas presidenciales. Actualice la entrada de Bill Clinton reemplazando "Socks" el gato con "Buddy" el perro.
var presidentialDogs = presidentialPetsDict
presidentialDogs["Bill Clinton"] = "Buddy"
print(presidentialDogs)

//: ### Ejercicio 12
//: Use la sintaxis de subíndices para completar la instrucción println a continuación y produzca la siguiente cadena: "Michele Obama pasea a Bo todas las mañanas". Tendrá que recuperar un valor del diccionario presidencialDogs y desenvolverlo usando if let.
//imprimir("Michele Obama camina \() todas las mañanas.")
if let dog = presidentialDogs["Barack Obama"]{
    print("Michele Obama walks \(dog) every morning")
}
else{
    print("No value found")
}

//: ### Ejercicio 13
// ¿Cuántos álbumes de estudio lanzó Led Zeppelin?
var studioAlbums = ["Led Zeppelin":1969, "Led Zeppelin II": 1969, "Led Zeppelin III": 1970, "Led Zeppelin IV": 1971, "Houses of the Holy":1973, "Physical Graffiti": 1975, "Presence":1976, "In Through the Out Door":1979, "Coda":1982]
studioAlbums.count

