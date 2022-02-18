//
//  SecondInnerViewController.swift
//  PhotoFrame
//
//  Created by Kai Kim on 2022/02/17.
//

import UIKit

class GreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("GreenView calls -> viewDidLoad")
    }
    override func viewWillAppear(_ animated:Bool) {
        super.viewWillAppear(animated)
        print("GreenView calls -> viewWillAppear")
    }
    override func viewDidAppear(_ animated:Bool) {
        super.viewDidAppear(animated)
        print("GreenView calls -> viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("GreenView calls -> viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("GreenView calls -> viewDidDisappear")
    }
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

