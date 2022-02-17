//
//  ViewController.swift
//  PhotFrame
//
//  Created by Joobang Lee on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstLabel.text = "joobang의 사진액자"
        print(#file, #line, #function, #column)
        print("뷰 로드됨")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#file, #line, #function, #column)
        print("뷰 나타날 예정")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#file, #line, #function, #column)
        print("뷰 나타났음")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#file, #line, #function, #column)
        print("뷰 사라질 예정")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#file, #line, #function, #column)
        print("뷰 사라졌음")
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.firstLabel.textColor = UIColor.blue
        self.firstLabel.backgroundColor = UIColor.yellow
        self.firstLabel.alpha = 0.5
    }
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

