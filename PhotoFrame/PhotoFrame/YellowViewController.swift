//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by 김한솔 on 2022/02/16.
//

import UIKit

class YellowViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
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
    
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        let blueModalVC = self.storyboard?.instantiateViewController(withIdentifier: "blueModal")
        blueModalVC?.modalTransitionStyle = .flipHorizontal
        blueModalVC?.modalPresentationStyle = .automatic
        self.present(blueModalVC!, animated: true, completion: nil)
    }
    @IBAction func closeButtonTouched(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
