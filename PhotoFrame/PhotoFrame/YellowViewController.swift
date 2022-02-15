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
