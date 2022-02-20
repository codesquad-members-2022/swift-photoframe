//
//  PhotoViewController.swift
//  PhotoFrame
//
//  Created by 최예주 on 2022/02/21.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet var photoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.contentMode = .scaleAspectFill
        if let image = UIImage(named: "Demo Images/01.jpg") {
            photoImageView.image = image
        }else{
            photoImageView.image = UIImage(systemName: "questionmark.square")
        }
        
        
    }
    

    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let randomImageNumber: String = {
            let random = String(Int.random(in: 1...22))
            if random.count == 1 { return "0"+random }
            return random
        }()
        
        if let image = UIImage(named: "Demo Images/\(randomImageNumber).jpg"){
            self.photoImageView.image = image
        }else{
            photoImageView.image = UIImage(systemName: "questionmark.square")
        }
        
    }
    

}
