//
//  ShadowView.swift
//  breakpoint
//
//  Created by trasksystems on 2017/08/21.
//  Copyright © 2017 SysamicKK. All rights reserved.
//

import UIKit

class ShadowView: UIView {
    
    override func awakeFromNib() {
      
            self.layer.shadowOpacity = 0.75
            self.layer.shadowRadius = 5
            self.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            super.awakeFromNib()
    }
}
