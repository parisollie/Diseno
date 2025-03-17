//
//  boton.swift
//  Diseno
//
//  Created by Paul F on 16/03/25.
//

import SwiftUI

/*
   V-41,Paso 1.9
   Propiedades de un botón para ahorrar código,Agregamos un modificador,para no
   estar agregando varias veces las propiedades de nuestro botón
*/
struct boton: ViewModifier{
    //Agregamos una variable para modificar el color de cada botón.
    var color: Color
    func body(content:Content) -> some View {
        content
            .padding()
            .background(color)
            .clipShape(Circle())
            .foregroundColor(.white)
            .font(.title)
        
    }
}
