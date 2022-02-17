//
//  SecondSceneViewController.swift
//  PhotoFrame
//
//  Created by juntaek.oh on 2022/02/17.
//

import UIKit

class SecondSceneViewController: UIViewController {
    var imageNum: String = "01.jpg"
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.contentMode = .scaleAspectFit
    }
    
    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        makeImageNumber()
        
        let image = UIImage(named: imageNum)
        photoImageView.image = image
    }
    
    func randomImageNumber() -> String{
        let number = Int.random(in: 1...22)
        var imageNum: String{
            if number < 10{
                let index: String = "0\(number).jpg"
                return index
            } else{
                let index: String = "\(number).jpg"
                return index
            }
        }
        
        return imageNum
    }
    
    func makeImageNumber(){
        var randomImageNum: String = randomImageNumber()
        
        while imageNum == randomImageNum{
            randomImageNum = randomImageNumber()
        }
        
        imageNum = randomImageNum
        
    }
}
