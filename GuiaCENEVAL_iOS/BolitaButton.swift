//
//  BolitaButton.swift
//  GuiaCENEVAL_iOS
//
//  Created by Nivelate Online on 6/19/16.
//  Copyright © 2016 Nivelate Online. All rights reserved.
//

import UIKit

class BolitaButton: UIButton {
    
    override func awakeFromNib() {
        self.layer.cornerRadius = 24.0
        self.clipsToBounds = true
        
    }
}
