//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by 김동준 on 2022/02/15.
//

import Foundation
import UIKit

class YellowViewController: UIViewController{
    
    @IBOutlet weak var closeBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setViewSetting(color: .yellow,btn: self.closeBtn)
    }
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

extension UIViewController{
    func setViewSetting(color: UIColor,btn: UIButton){
        view.backgroundColor = color
        btn.setTitle("close", for: .normal)
    }
}
