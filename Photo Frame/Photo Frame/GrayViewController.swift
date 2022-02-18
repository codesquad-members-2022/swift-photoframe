//
//  ViewController2.swift
//  Photo Frame
//
//  Created by Jihee hwang on 2022/02/17.
//

import UIKit

class GrayViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = .white
        
        print(#file, #line, #function, #column)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#file, #line, #function, #column)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#file, #line, #function, #column)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#file, #line, #function, #column)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#file, #line, #function, #column)
    }
    
    @IBAction func closeButtonTouchedInGray(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    

}
