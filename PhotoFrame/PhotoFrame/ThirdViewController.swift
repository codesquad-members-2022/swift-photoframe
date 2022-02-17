//
//  ThirdViewController.swift
//  PhotoFrame
//
//  Created by 최예주 on 2022/02/16.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        
    }
    

    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
