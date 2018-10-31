//
//  BorderedButton.swift
//  app-swoosh
//
//  Created by Mohammed Mohsin Sayed on 10/31/18.
//  Copyright © 2018 Mohammed Mohsin Sayed. All rights reserved.
//

import UIKit

class BorderedButton: UIButton {

    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        layer.borderWidth = 2
        layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    

}
