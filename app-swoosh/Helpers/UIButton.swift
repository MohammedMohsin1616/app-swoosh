//
//  UIButton.swift
//  app-swoosh
//
//  Created by Mohammed Mohsin Sayed on 11/4/18.
//  Copyright © 2018 Mohammed Mohsin Sayed. All rights reserved.
//

import UIKit

class buttonHandler {
    
    class func handleButtons(selectedButton:  UIButton, nonSelectedButtons: [BorderedButton?]) {
        
        selectedButton.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        selectedButton.setTitleColor(UIColor.black, for: .normal)
        
        for button in nonSelectedButtons {
            button?.backgroundColor = UIColor.black
            button?.setTitleColor(UIColor.white, for: .normal)
        }
    }
    
}
