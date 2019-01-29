//
//  ViewController.swift
//  Chat
//
//  Created by Memo Figueredo on 1/29/19.
//  Copyright © 2019 Memo Figueredo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //conectores
    
    @IBOutlet weak var respuestaJavier: UILabel!
    
    @IBOutlet weak var insertarPregunta: UITextField!
    
    
    @IBOutlet weak var labelPreguntar: UIButton!
    
    let myQuestion = Respuesta()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
  
    
    // funciones
    
    func respondemeMisPreguntas(_ question: String) {
        
        let respuesta = myQuestion.respondeme(question: question)
        
        displayRespuestaTextoScreen(respuesta)
        
        insertarPregunta.placeholder = "haz otra pregunta"
        
        insertarPregunta.text = nil
    }
    
    
   
    
   
    //acciones

    @IBAction func agregarPregunta(_ sender: UITextField) {
        
        
    }
    
    
    
    @IBAction func pregunta(_ sender: Any) {
        
        guard insertarPregunta.text != nil else {
            return
        }
        
       insertarPregunta.resignFirstResponder()
        
    }
    
   //funcion 2
    func displayRespuestaTextoScreen(_ answer: String) {
        
        respuestaJavier.text = answer
    }
 
}


extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        insertarPregunta.resignFirstResponder()
        return false
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let texto = insertarPregunta.text else {
            return
        }
        
    respondemeMisPreguntas(texto)
    }
}
