//
//  Puntacion.swift
//  Avance1
//
//  Created by user222909 on 11/3/22.
//

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
