//: # Ejercicios de la lección 5 - Definición y llamada de funciones

import UIKit

//: __Problema 1.__
//:
//:Anteriormente usamos el método removeAtIndex() para eliminar la primera letra de una cadena. Este método pertenece a la clase String. Vea si puede usar este mismo método para devolver la última letra de una cadena.

//:Pruebe su descubrimiento a continuación devolviendo la última letra de la Cadena, "PALABRA".
var word = "PALABRA"

var lastLetter = word.remove(at: word.index(before: word.endIndex))
word

//: __Problema 2__
//:
//: Escriba una función llamada combineLastCharacters. Debe tomar una matriz de cadenas, recopilar el último carácter de cada cadena y combinar esos caracteres para hacer una nueva cadena para devolver. Usa la estrategia que descubriste en el Problema 1 junto con un ciclo for-in para escribir combineLastCharacters. Luego pruébalo en nonsenseArray a continuación.
var nonsenseArray = ["bungalow", "buffalo", "indigo", "although", "Ontario", "albino", "%$&#!"]

func combineLastCharacters(_ wordArray:[String]) -> String{
    var newWord = ""
    for var word in wordArray{
        let lastCharacter = word.remove(at: word.index(before: word.endIndex))
        newWord.append(lastCharacter)
    }
    return newWord
}
combineLastCharacters(nonsenseArray)

//: __Problema 3__
//:
//: Imagina que estás escribiendo una aplicación que realiza un seguimiento de lo que gastas durante la semana. Los precios de los artículos comprados se ingresan en un campo de texto de "precio". El campo "precio" solo debe permitir números, no letras.

var gasto = ["11", "43", "26", "11", "45", "40"]

    func get_numbers(stringtext:[String]) -> [Int] {
    let StringRecordedArr = stringtext
    let convertedToInt = StringRecordedArr.map { Int($0)!}
        return convertedToInt
}
var suma = get_numbers(stringtext: gasto).reduce(0, {$0 + $1})
print("El resultado de la suma es \(suma)")
// https://fernandoruizrico.com/swift-ejercicios-propuestos-iv/


//: NSCharacterSet.decimalDigitCharacterSet() se usa a continuación para definir un conjunto de solo dígitos. Usando ese conjunto, escriba una función que tome una Cadena y devuelva verdadero si esa cadena es numérica y falso si contiene algún carácter que no sea un número.

//: __3a.__ Escribe una firma para una función que toma un String y devuelve un Bool

//: __3b.__ Escriba un bucle for-in que verifique cada carácter de una cadena para ver si es miembro del conjunto de "dígitos". Utilice la propiedad .unicodeScalars para acceder a todos los caracteres de una cadena.
let digits = CharacterSet.decimalDigits

func digitsOnly(_ word: String) -> Bool{
    for character in word.unicodeScalars{
        if !digits.contains(UnicodeScalar(character.value)!){
            return false
        }
    }
    return true
}
digitsOnly("0")
digitsOnly("A")

//: __Problema 4__
//:
//: Escriba una función que tome una matriz de cadenas de palabras sucias, elimine todas las palabras de cuatro letras y devuelva una matriz limpia.
let dirtyWordsArray = ["phooey", "darn", "drat", "blurgh", "jupiters", "argh", "fudge"]

func cleanUp(_ dirtyArray:[String]) -> [String]{
    var cleanArray = [String]()
    for word in dirtyArray{
        if word.count == 4{
            print("Palabra eliminada : \(word)")
        }
        else{
            cleanArray.append(word)
        }
    }
    return cleanArray
}
cleanUp(dirtyWordsArray)

//: __Problema 5__
//:
//: Escriba un método, filterByDirector, que pertenezca a la clase MovieArchive. Este método debe incluir un diccionario de títulos de películas y una cadena que represente el nombre de un director y devolver una serie de películas creadas por ese director. Puedes usar el diccionario de películas a continuación. Para probar su método, cree una instancia de la clase MovieArchive y llame a filterByDirector desde esa instancia.

var movies:Dictionary<String,String> = [ "Boyhood":"Richard Linklater","Inception":"Christopher Nolan", "The Hurt Locker":"Kathryn Bigelow", "Selma":"Ava Du Vernay", "Interstellar":"Christopher Nolan"]

class MovieArchive {
    func filterByDirector(_ currentDirector: String, movies: Dictionary<String,String>) -> [String]{
        var filteredArray = [String]()
        for (movie, director) in movies{
            if director == currentDirector{
                filteredArray.append(movie)
            }
        }
        return filteredArray
    }
}

var myArchive = MovieArchive()
myArchive.filterByDirector("Christopher Nolan", movies: movies)
