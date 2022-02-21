//
//  DarkGrayViewController.swift
//  PhotoFrame
//
//  Created by Bibi on 2022/02/18.
//

import UIKit

class DarkGrayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
        
    override func viewDidAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
