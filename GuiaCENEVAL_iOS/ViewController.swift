//
//  ViewController.swift
//  GuiaCENEVAL_iOS
//
//  Created by Nivelate Online on 6/19/16.
//  Copyright © 2016 Nivelate Online. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    let baseRef = FIRDatabase.database().reference()
    
    @IBOutlet weak var tituloNombreLbl: UILabel!
    @IBOutlet weak var materiaSeleccionadaLbl: UILabel!
    
    @IBOutlet weak var btn0: UIButton!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn10: UIButton!

    var x = 0
    
    let materias: [String] = ["Química", "Filosofía", "Ecología", "Historia de México", "Física", "Ética y Moral", "Ensayo Escrito", "Ciencias Sociales", "Biología", "Matemáticas", "Historia Universal"]
    
    @IBOutlet var collectionOfButtons: Array<UIButton>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let examenesRef = baseRef.child("examenes")
        examenesRef.observeEventType(.Value) { (snap: FIRDataSnapshot) in
        }
    }
    
    
    
    @IBAction func onExamenTapped(sender: AnyObject) {
        
    }
    
    @IBAction func onMateriaTapped(sender:UIButton!){
        
        regresarImgNormal()
        
        if sender == btn0{
            
            materiaSeleccionadaLbl.text = materias[0]
            let image = UIImage(named: "hover\(0).png") as UIImage!
            collectionOfButtons![0].setImage(image, forState: .Normal)
            
        } else if sender == btn1{
            
            materiaSeleccionadaLbl.text = materias[1]
            let image = UIImage(named: "hover\(1).png") as UIImage!
            collectionOfButtons![1].setImage(image, forState: .Normal)
            
        } else if sender == btn2{
            
            materiaSeleccionadaLbl.text = materias[2]
            let image = UIImage(named: "hover\(2).png") as UIImage!
            collectionOfButtons![2].setImage(image, forState: .Normal)
            
        } else if sender == btn3{
            
            materiaSeleccionadaLbl.text = materias[3]
            let image = UIImage(named: "hover\(3).png") as UIImage!
            collectionOfButtons![3].setImage(image, forState: .Normal)
            
        } else if sender == btn4{
            
            materiaSeleccionadaLbl.text = materias[4]
            let image = UIImage(named: "hover\(4).png") as UIImage!
            collectionOfButtons![4].setImage(image, forState: .Normal)
            
        } else if sender == btn5{
            
            materiaSeleccionadaLbl.text = materias[5]
            let image = UIImage(named: "hover\(5).png") as UIImage!
            collectionOfButtons![5].setImage(image, forState: .Normal)
            
        } else if sender == btn6{
            
            materiaSeleccionadaLbl.text = materias[6]
            let image = UIImage(named: "hover\(6).png") as UIImage!
            collectionOfButtons![6].setImage(image, forState: .Normal)
            
        } else if sender == btn7{
            
            materiaSeleccionadaLbl.text = materias[7]
            let image = UIImage(named: "hover\(7).png") as UIImage!
            collectionOfButtons![7].setImage(image, forState: .Normal)
            
        } else if sender == btn8{
            
            materiaSeleccionadaLbl.text = materias[8]
            let image = UIImage(named: "hover\(8).png") as UIImage!
            collectionOfButtons![8].setImage(image, forState: .Normal)
            
        } else if sender == btn9{
            
            materiaSeleccionadaLbl.text = materias[9]
            let image = UIImage(named: "hover\(9).png") as UIImage!
            collectionOfButtons![9].setImage(image, forState: .Normal)
            
        }else if sender == btn10{
            
            materiaSeleccionadaLbl.text = materias[10]
            let image = UIImage(named: "hover\(10).png") as UIImage!
            collectionOfButtons![10].setImage(image, forState: .Normal)
            
        }
    }
    
    func regresarImgNormal(){
        
        for x in 0...materias.count-1 {
            let image = UIImage(named: "icono\(x).png") as UIImage!
            collectionOfButtons![x].setImage(image, forState: .Normal)
            
        }
    }

}

