//
//  BlueViewController.swift
//  PhotoFrame
//
//  Created by 송태환 on 2022/02/18.
//

import UIKit

class BlueViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#fileID, #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#fileID, #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#fileID, #function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#fileID, #function)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#fileID, #function)
    }
}
