
import UIKit

class Opciones: NSObject {
    var Vibracion : Bool
    var Sonido : Bool
    var Musica : Int
    
    init(Vibracion: Bool, Sonido: Bool, Musica: Int) {
        self.Vibracion = Vibracion
        self.Sonido = Sonido
        self.Musica = Musica
    }
    
}
