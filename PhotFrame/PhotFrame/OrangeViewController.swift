//
//  YellowViewController.swift
//  PhotFrame
//
//  Created by Joobang Lee on 2022/02/15.
//

import UIKit

class OrangeViewController: UIViewController {

    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
    }
}
