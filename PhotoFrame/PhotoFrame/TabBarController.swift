//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 박진섭 on 2022/02/14.
//

import UIKit

class TabBarController: UITabBarController {

    
//MARK: -- 라이프 사이클 체크
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewDidLoad - TabBarController")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewWillAppear - TabBarController")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewDidAppear - TabBarController")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViwWillDisppaear - TabBarController")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewDidDisappear - TabBarController")
    }
}

