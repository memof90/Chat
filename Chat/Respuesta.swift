//
//  Respuesta.swift
//  Chat
//
//  Created by Memo Figueredo on 1/29/19.
//  Copyright © 2019 Memo Figueredo. All rights reserved.
//

import Foundation


struct Respuesta {
    
    func respondeme(question: String)-> String {
        
        let posibleQuestion = question.lowercased()
        
        if posibleQuestion == "hola como estas" {
            
            return "bien en que te puedo ayudar"
            
        } else if posibleQuestion == "donde estan las galletas" {
            
            return "las galletas estan en la cocina"
            
        } else if posibleQuestion.hasPrefix("donde") {
            
            return "en el norte"
            
        } else {
            
            let numeroDefecto = question.utf8CString.count % 3
            
            if numeroDefecto == 0 {
                
                return "realmente eso depende de ti"
                
            } else if numeroDefecto == 1 {
                
                return "Preguntame mañana"
                
            } else {
                
                return "Yo no estoy seguro, No te endiento"
            }
        }
    }
}
