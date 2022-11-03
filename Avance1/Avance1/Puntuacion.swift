
import UIKit

class Puntuacion: NSObject {
    var Tiempo : Int
    var Nombre : String
    var Jugadas : Int
    
    init(Tiempo: Int, Nombre: String, Jugadas: Int) {
        self.Tiempo = Tiempo
        self.Nombre = Nombre
        self.Jugadas = Jugadas
    }

}
