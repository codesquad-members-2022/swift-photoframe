//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 송태환 on 2022/02/14.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.photoImageView.image = UIImage(named: "01.jpg")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let num = Int.random(in: 01...22)
        self.photoImageView.image = UIImage(named: "\(num < 10 ? "0\(num)" : "\(num)").jpg")
    }
}
