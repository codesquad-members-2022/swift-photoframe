//
//  RedViewController.swift
//  PhotFrame
//
//  Created by Joobang Lee on 2022/02/17.
//

import UIKit

class RedViewController: UIViewController {

    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
    }
}
