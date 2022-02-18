//
//  SegueShowDetailViewController.swift
//  PhotoFrame
//
//  Created by Selina on 2022/02/18.
//

import UIKit

class SegueShowDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("SegueShowDetailViewController", #function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("SegueShowDetailViewController", #function)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("SegueShowDetailViewController", #function)
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("SegueShowDetailViewController", #function)
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("SegueShowDetailViewController", #function)
    }
}
