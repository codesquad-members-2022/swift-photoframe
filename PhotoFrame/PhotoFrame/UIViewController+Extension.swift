//
//  UIViewController+Extension.swift
//  PhotoFrame
//
//  Created by 백상휘 on 2022/02/22.
//

import UIKit

extension UIViewController {
    
    func addChildAndLabel() -> UILabel {
        
        let vc = UIViewController()
        let helloLabel = UILabel()
        
        self.addChild(vc)
        self.view.addSubview(vc.view)
        
        vc.view.frame = self.view.bounds
        
        vc.view.addSubview(helloLabel)
        helloLabel.text = "Hello World"
        helloLabel.frame.size = vc.view.frame.size
        helloLabel.center = vc.view.center
        helloLabel.textAlignment = .center
        
        vc.didMove(toParent: self)
        
        return helloLabel
    }
}
