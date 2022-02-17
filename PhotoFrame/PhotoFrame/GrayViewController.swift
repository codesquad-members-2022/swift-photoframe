//
//  GrayViewController.swift
//  PhotoFrame
//
//  Created by YEONGJIN JANG on 2022/02/17.
//

import UIKit

class GrayViewController: UIViewController {
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Gray \(#function)")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Gray \(#function)")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Gray \(#function)")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Gray \(#function)")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Gray \(#function)")
    }
}
