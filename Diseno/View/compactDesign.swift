//
//  compactDesign.swift
//  Diseno
//
//  Created by Paul F on 16/03/25.
//

import SwiftUI

//V-39,Paso 1.5
//Diseño Vertical.
struct compactDesign:View{
    
    //V-42,paso 1.12
    //Creamos nuestas constantes.
    
    let numero = "123456789"
    let mensaje = "Hola,¿como estas?"
    
    //Paso 1.13, Funciones de nuestros botones para mandar mensaje y llamar.
    func sendMessage (){
        //Agregamos nuestro numero y mensaje
        let sms = "sms:\(numero)&body=\(mensaje)"
        //Convertimos de un mensaje a un string.
        
        guard let stringSMS = sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)else {return}
         
        /*string: stringSMS! , nos pide la parte de arriba, cpon el (!) le decimos si tenemos un numero
         [:], no queremos ninguna opcion */
        UIApplication.shared.open(URL.init(string: stringSMS)!,options: [:],completionHandler: nil)
    }
    
    
    func sendCall() {
        guard let number = URL(string: "tel://\(numero)") else { return}
        UIApplication.shared.open(number)
    }
    
    /****************************************************************************************************************************/
    var body: some View{
        //cuando voltemos el celular a Vertical.
        ZStack{
            
            //Paso 1.6,Cambiamos el background del canvas ,solo pone el safe area y le decimos que ignore el area segura para que lo pinte todo.
            Color.green.edgesIgnoringSafeArea(.all)
            //Para colocar varios elementos en el body usamos VStack.
            VStack(){
                //V-40,paso 1.8,Llamamos el símbolo de la persona de Simbolos SF.
                Image(systemName: "person.crop.circle").font(.system(size: 100,weight: .bold))
                Text("Esteban Martinez")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .bold()
                Text("Calle #561")
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()
                    .italic()
                
                //V-41,paso 1.11
                HStack{
                    Button(action:{
                        //Mandamos a llamar nuestra función de botón.
                        sendCall()
                    }){
                        Image(systemName: "phone.fill")
                            //Paso 1.10 mandamos a llamar a nuestra estructura botón.
                            .modifier(boton(color: .blue))
                    }
                    
                    Button(action:{
                        sendMessage()
                    }){
                        Image(systemName: "message.fill")
                            .modifier(boton(color: .red))
                    }
                }//Fin HStack
            }//Fin VStack
        }//Fin ZStack
    }
}

#Preview {
    compactDesign()
}
