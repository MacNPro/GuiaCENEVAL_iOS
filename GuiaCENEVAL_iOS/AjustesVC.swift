//
//  AjustesVC.swift
//  GuiaCENEVAL_iOS
//
//  Created by Nivelate Online on 6/22/16.
//  Copyright © 2016 Nivelate Online. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class AjustesVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cerrarSesionBtn(sender: AnyObject) {
        
        try! FIRAuth.auth()!.signOut()
        self.performSegueWithIdentifier("signedOut", sender: nil)
        
    }
    
}
