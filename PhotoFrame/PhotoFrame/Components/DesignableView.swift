//
//  DesignableView.swift
//  PhotoFrame
//
//  Created by 송태환 on 2022/02/16.
//

import UIKit

@IBDesignable
class DesignableView: UIView {
    
    @IBInspectable
    var shadowOpacity: Float = 0.0 {
        didSet {
            self.layer.shadowOpacity = shadowOpacity
        }
    }
    
    @IBInspectable
    var shadowOffset: Int = 0 {
        didSet {
            self.layer.shadowOffset = CGSize(width: 0, height: shadowOffset)
        }
    }
    
    @IBInspectable
    var shadowColor: UIColor = UIColor.clear {
        didSet {
            self.layer.shadowColor = shadowColor.cgColor
        }
    }
    
    @IBInspectable
    var shadowRadius: CGFloat = 0 {
        didSet {
            self.layer.shadowRadius = shadowRadius
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
        }
    }
}
