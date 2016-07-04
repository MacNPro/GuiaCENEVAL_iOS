//
//  RegistroVC.swift
//  GuiaCENEVAL_iOS
//
//  Created by Nivelate Online on 6/22/16.
//  Copyright © 2016 Nivelate Online. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class RegistroVC: UIViewController {
    
    
    @IBOutlet weak var nombreTxtField: TextFieldPro!
    @IBOutlet weak var correoRegTxtField: TextFieldPro!
    @IBOutlet weak var contraseña1RegTxtField: TextFieldPro!
    @IBOutlet weak var contraseña2RegTxtField: TextFieldPro!
    
    var correoReg: String!
    var nombreReg: String!
    var contraseña1Reg: String!
    var contraseña2Reg: String!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func registroFirebase(sender: AnyObject) {
        
        nombreReg = nombreTxtField.text
        correoReg = correoRegTxtField.text
        contraseña1Reg = contraseña1RegTxtField.text
        contraseña2Reg = contraseña2RegTxtField.text
        
        if contraseña1Reg == contraseña2Reg {
            FIRAuth.auth()?.createUserWithEmail(correoReg, password: contraseña1Reg, completion: { (user, error) in
                
                if error != nil {
                    print("Error al iniciar sesión")
                } else {
                    self.agregarInfoDeUsuario(self.nombreReg)
                    
                }
                
            })
            
        } else {
            
            mostrarError("Las contraseñas no coinciden", msg: "Cheque que las contraseñas sean iguales")
            
        }
    }
    
    func agregarInfoDeUsuario(sender: String!) {
        let user = FIRAuth.auth()?.currentUser
        if let user = user {
            let changeRequest = user.profileChangeRequest()
            
            changeRequest.displayName = nombreReg
            changeRequest.commitChangesWithCompletion { error in
                if error != nil {
                    print("Error en la actualización del prefil")
                } else {
                    print("Perfil actualizado")
                }
            }
        }
    }
    
    func mostrarError(title: String,msg: String){
        let alert = UIAlertController(title: title, message: msg, preferredStyle: UIAlertControllerStyle.Alert)
        let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alert.addAction(action)
        presentViewController(alert, animated: true, completion: nil)
        
    }
    
    

}
