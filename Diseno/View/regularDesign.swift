//
//  regularDesign.swift
//  Diseno
//
//  Created by Paul F on 16/03/25.
//

import SwiftUI

//V-39
//Diseño Horizontal-cuando voltemos el celular a horizontal.
struct regularDesign:View{
    var body: some View{
        //Paso 1.2, ponemos el z
        ZStack{
            
            //Paso 1.3 .Se pintará en amarilo cuando voltemos el celular a horizontal.
            Color.yellow.edgesIgnoringSafeArea(.all)
            
            HStack(){
                
                Image("logo2")
                    //lo ajustamos.
                    .resizable()
                    //cambiamos las medidas de las imágenes.
                    .frame(width: 130,height: 100,alignment: .center)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 10){
                    
                    Text("Esteban Martinez")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                        .bold()
                    
                    Text("Calle #561")
                        .font(.title)
                        .foregroundColor(.purple)
                        .bold()
                        .italic()
                }
            }
        }
    }
}


#Preview {
    regularDesign()
}
