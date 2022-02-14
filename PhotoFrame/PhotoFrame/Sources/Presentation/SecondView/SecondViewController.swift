//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by seongha shin on 2022/02/14.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setRandomImage()
    }
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        setRandomImage()
    }
    
    private func setRandomImage() {
        let randomIndex = Int.random(in: 1...22)
        self.photoImageView.image = UIImage(named: String(format: "%02d.jpg", randomIndex))
    }
}
