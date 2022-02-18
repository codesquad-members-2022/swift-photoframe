//
//  GrayViewController.swift
//  PhotoFrame
//
//  Created by Bumgeun Song on 2022/02/17.
//

import UIKit

class GrayViewController: UIViewController {
    @IBAction func showButtonTouched(_ sender: UIButton) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let yellowViewController = storyBoard.instantiateViewController(withIdentifier: "YellowViewController")
        show(yellowViewController, sender: self)
    }


    @IBAction func closeButtonTouched(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        print("Gray View did disappear")
    }
}
