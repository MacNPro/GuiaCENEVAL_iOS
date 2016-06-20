//
//  RoundButton.swift
//  GuiaCENEVAL_iOS
//
//  Created by Nivelate Online on 6/19/16.
//  Copyright © 2016 Nivelate Online. All rights reserved.
//

import UIKit

class RoundButton: UIButton {
    
    override func awakeFromNib() {
        self.layer.cornerRadius = 21.0
        self.clipsToBounds = true
        
    }

}
