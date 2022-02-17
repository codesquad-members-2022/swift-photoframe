//
//  ViewController2.swift
//  PhotoFrame
//
//  Created by YEONGJIN JANG on 2022/02/14.
//

import Foundation
import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var photoLabel: UILabel!
    @IBAction func nextButtonTouched(_ sender: Any) {
        let random_number: Int = Int.random(in: 1...22)
        if random_number < 10 {
            self.photoImageView.image = UIImage(named: "0\(random_number).jpg")
        } else {
            self.photoImageView.image = UIImage(named: "\(random_number).jpg")
        }
    }
    @IBOutlet weak var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nextButtonTouched(self.nextButton)
    }
}
