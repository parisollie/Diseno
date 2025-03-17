//
//  ContentView.swift
//  Diseno
//
//  Created by Paul Jaime Felix Flores on 17/03/23.
//



/*
 V-35,Paso 1.0 Contenedores
 
 VStack, vertical
 HStack, Horizontal
 ZStack, fondo(empalmar objetos sobre otro objeto)
 
 V-36, Paso 1.1 Alineamiento:
 Las Alineaciones son diperentes para c/u
 --El spacing hace que se separen los elementos.
 
 Zstack(alignment: Alignment(horizontal: .leading,vertical: .top))
 VStack(alignment: .trailing,spacing: 30)
 HStack(alignment: .top,spacing: 30)
 */

import SwiftUI

struct ContentView: View {
    //V-39
    /*Valores de entorno o enviromentValues,sólo ponemos el
     @,para pider acceder a ellas.
     
     SizeClass
     Accedemos a las vistas que necesitaremos para rotar el teléfono.
     */
    
    @Environment(\.horizontalSizeClass) var hsizeClass
    @Environment(\.verticalSizeClass) var vsizeClass
    
    var body: some View {
        //V-39
        /*Cada vez que cambiamos la posición del teléfono
         nos cambiará la dirección del diseño*/
        if hsizeClass == .compact&&vsizeClass == .regular{
            compactDesign()
        }else{
            regularDesign()
        }
    }
}

#Preview {
    ContentView()
}





