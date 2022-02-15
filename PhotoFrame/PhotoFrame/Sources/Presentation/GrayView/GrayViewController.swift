//
//  ColorView1.swift
//  PhotoFrame
//
//  Created by seongha shin on 2022/02/14.
//

import UIKit

class GrayViewController: UIViewController {
    
    override func viewDidLoad() {
        print(#file, #line, #function, #column)
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
        self.navigationController?.popViewController(animated: true)
    }
}
