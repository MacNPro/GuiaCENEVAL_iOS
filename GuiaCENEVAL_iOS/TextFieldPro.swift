//
//  TextFieldPro.swift
//  GuiaCENEVAL_iOS
//
//  Created by Nivelate Online on 6/22/16.
//  Copyright © 2016 Nivelate Online. All rights reserved.
//

import UIKit

class TextFieldPro: UITextField {

    override func awakeFromNib() {
        layer.cornerRadius = 4.0
    }
    
    override func textRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, 10, 0)
    }
    
    override func editingRectForBounds(bounds: CGRect) -> CGRect {
        return CGRectInset(bounds, 10, 0)
    }

}
