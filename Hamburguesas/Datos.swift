//
//  Datos.swift
//  Hamburguesas
//
//  Created by Ladislao Osorio on 5/5/16.
//  Copyright © 2016 Ladislao Osorio. All rights reserved.
//

import Foundation

class ColeccionDePaises{
    var paises :[String] = [ "Afganistan" , "Akrotiri","Alban       ia","Alemania","Andorra","Angola","Anguila","Antártida","Antigua y Barbuda","Antillas Neerlandesas","Arabia Saudí","Arctic Ocean","Argelia","Argentina","Armenia","Aruba","Ashmore and Cartier Islands","Atlantic Ocean","Australia","Austria","Azerbaiyán" ]
    init(){}
    
    
    func obtenPais() -> String? {
        print ( " \(paises.count) ")
        print ( " \(arc4random()) ")
        let indice : Int = Int(arc4random()  % UInt32 (paises.count))
        return paises [indice]
    }
   
}
class ColeccionDeHamburguesa {
    var hamburguesas : [String] = ["Vegetariana","Bronto","Italiana","Africana","Doble Queso","Doble Carne","Hawaiana","Delissiosa","Junior Kids","Capri","Pechugona","Big Mac","Incomible","Whopper","Campesina","Mexicana","Nino Pobre","Internacional","Cubana","Pambazo"]
    init(){}
    
    func obtenHamburguesa() -> String {
        let indice : Int = Int(arc4random()  % UInt32(hamburguesas.count))
        return hamburguesas [indice]
    }
}
