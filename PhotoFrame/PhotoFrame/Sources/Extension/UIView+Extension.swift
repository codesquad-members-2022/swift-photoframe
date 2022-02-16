//
//  UIView+Extension.swift
//  PhotoFrame
//
//  Created by seongha shin on 2022/02/16.
//

import Foundation
import UIKit


extension UIView {
    func addSubViews(_ uiViews: [UIView]) {
        uiViews.forEach {
            self.addSubview($0)
        }
    }
}
