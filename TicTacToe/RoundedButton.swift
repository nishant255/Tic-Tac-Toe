//
//  RoundedButton.swift
//  TicTacToe
//
//  Created by Nishant Patel on 3/9/17.
//  Copyright © 2017 Nishant Patel. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 1/UIScreen.main.nativeScale
        layer.borderColor = UIColor.black.cgColor
        
    }
}
