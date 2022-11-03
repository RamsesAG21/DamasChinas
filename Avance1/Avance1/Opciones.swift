//
//  Opciones.swift
//  Avance1
//
//  Created by user222909 on 11/3/22.
//

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
