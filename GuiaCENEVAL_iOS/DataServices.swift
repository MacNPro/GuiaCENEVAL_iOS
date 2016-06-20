//
//  DataServices.swift
//  GuiaCENEVAL_iOS
//
//  Created by Nivelate Online on 6/20/16.
//  Copyright © 2016 Nivelate Online. All rights reserved.
//

import Foundation
import Firebase

class DataServices {
    
    static let ds = DataServices()
    
    private var _baseRef = FIRDatabase.database().reference()
    private var _examenesRef = baseRef.child("examenes")
    
    var baseRef: FIRDatabaseReference{
        return _baseRef
    }
}
