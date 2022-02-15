//
//  ReturnSheetViewController.swift
//  PhotoFrame
//
//  Created by juntaek.oh on 2022/02/15.
//

import Foundation

import UIKit

class ReturnSheetViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func returnFirst(_ sender: Any) {
        performSegue(withIdentifier: "unwindFirst", sender: self)
    }
}
