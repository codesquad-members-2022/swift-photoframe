//
//  ViewController.swift
//  PhotoFrame
//
//  Created by Bumgeun Song on 2022/02/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoLabel.text = "Eddy의 사진 액자"
        photoLabel.font = .systemFont(ofSize: CGFloat(40))
        photoLabel.textColor = UIColor(
            red: CGFloat(46)/255,
            green: CGFloat(148)/255,
            blue: CGFloat(185)/255,
            alpha: 1)
        photoLabel.backgroundColor = UIColor(
            red: CGFloat(255)/255,
            green: CGFloat(253)/255,
            blue: CGFloat(193)/255,
            alpha: 0.5)
    }


}

