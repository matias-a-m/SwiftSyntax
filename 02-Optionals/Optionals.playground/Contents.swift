import UIKit

//: # Lección 2 Ejercicios
//: ## Optionals
//: ### Ejercicio 1
//: Al recuperar un valor de un diccionario, Swift devuelve un valor opcional.
//:
//: 1a) La variable director es de tipo opcional. Su valor no se puede utilizar hasta que se desenvuelve. Use `if let` para desenvolver cuidadosamente el valor devuelto por `moviesDict[movie]`
var moviesDict:Dictionary = [ "Star Wars":"George Lucas", "Point Break":"Kathryn Bigelow"]
var movie = "Star Wars"
var director = moviesDict[movie]

//: 1b) Pruebe su código insertando diferentes valores para la variable `película`.
if let director = moviesDict[movie]{
    print("\(director) directed \(movie)")
}
else{
    print("No director found")
}

//: ### Ejercicio 2
//: La clase LoginViewController a continuación necesita un UITextField para contener el nombre de un usuario. Declare una variable para este campo de texto como una propiedad de la clase LoginViewController. Tenga en cuenta que la propiedad del campo de texto no se inicializará hasta que se construya el controlador de vista.
class LoginViewController: UIViewController {
    var nameTF: UITextField!
}

//: ### Ejercicio 3
//: El tipo Swift Int tiene un inicializador que toma una cadena como parámetro y devuelve un opcional de tipo Int?.
//:
//: 3a) Termine el código a continuación desenvolviendo de forma segura la constante, `number`.
var numericalString = "3"
var number = Int(numericalString)
//TODO: Unwrap - Se desenvuelve el número para que la siguiente instrucción de impresión sea más legible.

if let number = number{
    print("\(number) is the magic number.")
}
else{
    print("No magic numbers here.")
}

//: 3b) Cambia el valor de numberString a "tres" y vuelve a ejecutar el patio de recreo.
numericalString = "three"
var number1 = Int(numericalString)

if let number1 = number1{
    print("\(number1) is the magic number.")
}
else{
    print("No magic numbers here.")
}

//: ### Ejercicio 4
//: La clase UIViewController tiene una propiedad llamada tabBarController. La propiedad tabBarController es opcional de tipo UITabBarController?. El propio tabBarController contiene un tabBar como propiedad. Complete el código a continuación completando el uso apropiado del encadenamiento opcional para acceder a la propiedad de la barra de pestañas.
var viewController = UIViewController()
if let tabBar = viewController.tabBarController?.tabBar {
 print("Aquí está la barra de pestañas")
} else {
 print("No se encontró ningún controlador de barra de pestañas.")
}
//: ### Ejercicio 5
//: A continuación se muestra un diccionario de pinturas y artistas.
//:
//: 5a) La variable artista es de tipo opcional. Su valor no se puede utilizar hasta que se desenvuelve. Usa `if let` para desenvolver cuidadosamente el valor devuelto por `paintingDict[painting]`.

var paintingDict:Dictionary = [ "Guernica":"Picasso", "Mona Lisa": "da Vinci", "No. 5": "Pollock"]
var painting = "Mona Lisa"
var artist = paintingDict[painting]

//: 5b) Pruebe su código insertando diferentes valores para la variable `pintura`.
if let artist = artist{
    print("\(artist) painted \(painting)")
}
else{
    print("No artist found.")
}
//: ### Ejercicio 6
//: Establezca el ancho del botón cancelar a continuación. Tenga en cuenta que la variable cancelButton se declara como un opcional desenvuelto implícitamente.
var anotherViewController = UIViewController()
var cancelButton: UIBarButtonItem!
cancelButton = UIBarButtonItem()
// TODO: establece el ancho del botón cancelar.
cancelButton.width = 50

//: ### Ejercicio 7
//: La clase UIViewController tiene una propiedad llamada padre. La propiedad principal es opcional de tipo UIViewController?. No siempre podemos estar seguros de que un controlador de vista determinado tenga un controlador de vista principal. Desenvuelva de forma segura la propiedad principal a continuación usando if let.
var childViewController = UIViewController()
// TODO: Desempaquetar con seguridad childViewController.parent

if let parentVC = childViewController.parent{
    print("Here´s the parent view controller")
}
else{
    print("No parents, let´s party!")
}
