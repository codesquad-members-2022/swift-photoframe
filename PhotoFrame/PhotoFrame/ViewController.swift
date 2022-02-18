//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 백상휘 on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
//    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
//        .landscapeLeft
//    }
    
    @IBAction func nextButtonTouchUpInside(_ sender: Any) {
        
        guard let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {
            return
        }
        
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    

    
}

