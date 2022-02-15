//
//  CustomLabel.swift
//  PhotoFrame
//
//  Created by jsj on 2022/02/15.
//

import UIKit

@IBDesignable
class CustomLabel: UILabel {
    @IBInspectable var italicRange: String {
        get {
            return self.italicRange
        }
        set {
            let fontSize = self.font.pointSize
            let font = UIFont.italicSystemFont(ofSize: fontSize)
            let fullText = self.text ?? ""
            let range = (fullText as NSString).range(of: newValue)
            let attributedString = NSMutableAttributedString(string: fullText)
            attributedString.addAttribute(.font, value: font, range: range)
            self.attributedText = attributedString
        }
    }
}
