//
//  DesignableBlurView.swift
//  PhotoFrame
//
//  Created by 송태환 on 2022/02/16.
//

import UIKit

@IBDesignable
class DesignableBlurView: UIVisualEffectView {
    @IBInspectable var maskToBounds: Bool = false {
        didSet {
            layer.masksToBounds = maskToBounds
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0.0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.cornerCurve = .continuous
        }
    }
}
