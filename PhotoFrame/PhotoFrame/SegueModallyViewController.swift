//
//  SegueModallyViewController.swift
//  PhotoFrame
//
//  Created by Selina on 2022/02/18.
//

import UIKit

class SegueModallyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("SegueModallyViewController", #function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("SegueModallyViewController", #function)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("SegueModallyViewController", #function)
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("SegueModallyViewController", #function)
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("SegueModallyViewController", #function)
    }
}
