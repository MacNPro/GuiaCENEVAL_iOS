//
//  ComenzarVC.swift
//  GuiaCENEVAL_iOS
//
//  Created by Nivelate Online on 6/19/16.
//  Copyright © 2016 Nivelate Online. All rights reserved.
//

import UIKit

class ComenzarVC: ViewController {
    
    @IBOutlet weak var iconoMateria: UIImageView!
    @IBOutlet weak var materiaComenzarLbl: UILabel!
    
    @IBOutlet weak var btnPregunta1: BolitaButton!
    @IBOutlet weak var btnPregunta2: BolitaButton!
    @IBOutlet weak var btnPregunta3: BolitaButton!
    @IBOutlet weak var comenzarBtn: RoundButton!
    
    
    var materiaSeleccionada: String?
    var siguiente: Bool = false
    var preguntasExamen = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        materiaComenzarLbl.text = materiaSeleccionada
        
        if materiaSeleccionada == "Química" {
            iconoMateria.image = UIImage(named: "hover0.png")
            
        }else if materiaSeleccionada == "Filosofía" {
            iconoMateria.image = UIImage(named: "hover1.png")
            
        }else if materiaSeleccionada == "Ecología" {
            iconoMateria.image = UIImage(named: "hover2.png")
            
        }else if materiaSeleccionada == "Historia de México" {
            iconoMateria.image = UIImage(named: "hover3.png")
            
        }else if materiaSeleccionada == "Física" {
            iconoMateria.image = UIImage(named: "hover4.png")
            
        }else if materiaSeleccionada == "Ética y Moral" {
            iconoMateria.image = UIImage(named: "hover5.png")
            
        }else if materiaSeleccionada == "Ensayo Escrito" {
            iconoMateria.image = UIImage(named: "hover6.png")
            
        }else if materiaSeleccionada == "México,Política y Sociedad" {
            iconoMateria.image = UIImage(named: "hover7.png")
            
        }else if materiaSeleccionada == "Biología" {
            iconoMateria.image = UIImage(named: "hover8.png")
            
        }else if materiaSeleccionada == "Matemáticas" {
            iconoMateria.image = UIImage(named: "hover9.png")
            
        }else if materiaSeleccionada == "Historia Universal" {
            iconoMateria.image = UIImage(named: "hover10.png")
            
        }
    }
    
    @IBAction func btnPreguntas1(sender: AnyObject){
        resetAlpha()
        enableComenzar()
        btnPregunta1.alpha = 0.5
        preguntasExamen = 15
    }
    
    @IBAction func btnPreguntas2(sender: AnyObject) {
        resetAlpha()
        enableComenzar()
        btnPregunta2.alpha = 0.5
        preguntasExamen = 20
    }
    
    @IBAction func btnPreguntas3(sender: AnyObject) {
        resetAlpha()
        enableComenzar()
        btnPregunta3.alpha = 0.5
        preguntasExamen = 25
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "seguePreguntas" {
            if let preguntaVC = segue.destinationViewController as? PreguntaVC {
                preguntaVC.numDePreguntas = preguntasExamen
            }
        }
    }
    
    func mostrarError(title: String,msg: String){
        let alert = UIAlertController(title: title, message: msg, preferredStyle: UIAlertControllerStyle.Alert)
        let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func comenzarBtn(sender: AnyObject) {
        
        if siguiente == true {
            performSegueWithIdentifier("seguePreguntas", sender: nil)
        }else{
            mostrarError("No seleccióno el número de preguntas", msg: "Seleccione cuantas preguntas quiere en el examen")
        }
        
    }
    
    func resetAlpha() {
        btnPregunta1.alpha = 1.0
        btnPregunta2.alpha = 1.0
        btnPregunta3.alpha = 1.0
    }
    
    func enableComenzar() {
        siguiente = true
        comenzarBtn.alpha = 1.0
    }
    
    
    
}