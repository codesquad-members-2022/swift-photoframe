//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by Bumgeun Song on 2022/02/16.
//

import UIKit

class YellowViewController: UIViewController {

    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Yellow View will appear")
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Yellow View did appear")
        print(#file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Yellow View will disappear")
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Yellow View did disappear")
        print(#file, #line, #function, #column)
    }
}
