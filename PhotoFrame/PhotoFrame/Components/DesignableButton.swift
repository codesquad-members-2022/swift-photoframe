//
//  DesignableButton.swift
//  PhotoFrame
//
//  Created by 송태환 on 2022/02/16.
//

import UIKit

@IBDesignable
class DesignableButton: UIButton {
    
    @IBInspectable
    var disabled: Bool = false {
        didSet {
            self.isEnabled = !disabled
        }
    }
    
    @IBInspectable
    var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable
    var borderColor: UIColor = .black {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable
    var cornerRadius: CGFloat = 0 {
        didSet {
            self.layer.cornerCurve = .continuous
            self.layer.cornerRadius = cornerRadius
            self.layer.masksToBounds = cornerRadius > 0
        }
    }
    
}
