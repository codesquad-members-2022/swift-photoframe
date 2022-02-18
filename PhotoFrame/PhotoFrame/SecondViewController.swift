//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 백상휘 on 2022/02/18.
//

import UIKit

class SecondViewController: UIViewController {
    
//    override var shouldAutorotate: Bool {
//        false
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        .landscapeLeft
    }
    
//    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
//        .landscapeLeft
//    }
    
    @IBAction func dismissButtonTouchUpInside(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
