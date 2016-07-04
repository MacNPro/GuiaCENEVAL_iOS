//
//  LoginVC.swift
//  GuiaCENEVAL_iOS
//
//  Created by Nivelate Online on 6/22/16.
//  Copyright © 2016 Nivelate Online. All rights reserved.
//

import UIKit
import FirebaseAuth
import FBSDKLoginKit

class LoginVC: ViewController {
    
    
    @IBOutlet weak var correoTxtField: TextFieldPro!
    @IBOutlet weak var contraseñaTextField: TextFieldPro!
    @IBOutlet weak var iniciarSesionBtn: RoundButton!
    @IBOutlet weak var iniciarConFbBtn: FBSDKButton!
    @IBOutlet weak var registrateBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        iniciarConFbBtn.layer.cornerRadius = 21.0
        iniciarConFbBtn.clipsToBounds = true
        
        userLoginState()
        
        }
    
    override func viewDidAppear(animated: Bool) {
        
        FIRAuth.auth()?.addAuthStateDidChangeListener { auth, user in
            
            if user != nil {
                
                self.performSegueWithIdentifier("loggedIn", sender: nil)
                
            } else {
                // No user is signed in.
            }
        }
    }
    
    
    @IBAction func iniciarSesionBtn(sender: AnyObject) {
        
        if let correo = correoTxtField.text where correo != "", let contraseña = contraseñaTextField.text where contraseña != "" {
            FIRAuth.auth()?.signInWithEmail(correo, password: contraseña) { (user, error) in
                if error == nil {
                    self.performSegueWithIdentifier("loggedIn", sender: nil)
                }
            }
        } else {
            mostrarError("Error al iniciar sesíon", msg: "Introduzca correo y contraseña correctas")
        }
    }
    
    
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
        
        if error == nil{
            
            let accessToken = FIRFacebookAuthProvider.credentialWithAccessToken(FBSDKAccessToken.currentAccessToken().tokenString)
            
            FIRAuth.auth()?.signInWithCredential(accessToken) { (user, error) in
                
                if error != nil {
                    print("Login failed. \(error)")
                } else {
                    print("Logged In")
                    self.performSegueWithIdentifier("loggedIn", sender: nil)
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
    
    
    func userLoginState() {
        
        if let user = FIRAuth.auth()?.currentUser {
            let name = user.displayName
            let email = user.email
            let uid = user.uid;
            print(name, email, uid)
        } else {
            
        }
    }
    
    
    
}
