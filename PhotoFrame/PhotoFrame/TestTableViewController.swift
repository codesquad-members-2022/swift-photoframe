//
//  TestTableViewController.swift
//  PhotoFrame
//
//  Created by Selina on 2022/02/18.
//

import UIKit

class TestTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("TestTableViewController", #function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("TestTableViewController", #function)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("TestTableViewController", #function)
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("TestTableViewController", #function)
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("TestTableViewController", #function)
    }
}
