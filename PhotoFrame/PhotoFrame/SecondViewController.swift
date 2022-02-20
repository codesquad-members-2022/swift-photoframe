//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Selina on 2022/02/21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
//        var randomNumber = Int.random(in: 0...22)
//        if randomNumber < 10 {
//            self.photoImageView.image = UIImage(named: "0\(randomNumber).jpg")
//        } else {
//            self.photoImageView.image = UIImage(named: "\(randomNumber).jpg")
//        }
        self.photoImageView.image = UIImage(named: "20.jpg")
        
        switch contentModeRawValue {
        case 0:
            photoImageView.contentMode = UIView.ContentMode(rawValue: contentModeRawValue) ?? .scaleToFill
        case 1:
            photoImageView.contentMode = .scaleAspectFit
        case 2:
            photoImageView.contentMode = .scaleAspectFill
        case 3:
            photoImageView.contentMode = .redraw
        case 4:
            photoImageView.contentMode = .center
        case 5:
            photoImageView.contentMode = .top
        case 6:
            photoImageView.contentMode = .bottom
        case 7:
            photoImageView.contentMode = .left
        case 8:
            photoImageView.contentMode = .right
        case 9:
            photoImageView.contentMode = .topLeft
        case 10:
            photoImageView.contentMode = .topRight
        case 11:
            photoImageView.contentMode = .bottomLeft
        default:
            photoImageView.contentMode = .bottomRight
        }
        
        testLabel.text = "\(contentMode[contentModeRawValue])"
        
        print("ContentMode: \(contentMode[contentModeRawValue]) /", "RawValue: \(contentModeRawValue)")
        contentModeRawValue += 1
        
        if contentModeRawValue == 13 {
            contentModeRawValue = 0
        }
    }
    
    var contentModeRawValue = 0
    let contentMode = ["scaleToFill", "scaleAspectFit", "scaleAspectFill", "redraw", "center", "top", "bottom", "left", "right", "topLeft", "topRight", "bottomLeft", "bottomRight"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentModeRawValue = 0
        print("ContentModeTest")
    }
}
