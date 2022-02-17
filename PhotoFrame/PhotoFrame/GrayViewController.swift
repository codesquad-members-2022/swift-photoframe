//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by Bumgeun Song on 2022/02/16.
//

import UIKit

class GrayViewController: UIViewController {
    @IBAction func showButtonTouched(_ sender: UIButton) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let yellowViewController = storyBoard.instantiateViewController(withIdentifier: "YellowViewController")
        show(yellowViewController, sender: self)
    }
    
    @IBAction func closeButtonTouched(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Gray View will appear")
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Gray View did appear")
        print(#file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Gray View will disappear")
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Gray View did disappear")
        print(#file, #line, #function, #column)
    }
}
