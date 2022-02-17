//
//  SecondSceneViewController.swift
//  PhotoFrame
//
//  Created by juntaek.oh on 2022/02/17.
//

import UIKit

class SecondSceneViewController: UIViewController {
    private var imageNum: String = "01.jpg"
    private var uiImage: UIImage?
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var shadowView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.contentMode = .scaleAspectFill
        photoImageView.layer.cornerRadius = 30
        photoImageView.clipsToBounds = true
        
        shadowView.layer.cornerRadius = 30
        shadowView.layer.shadowOffset = CGSize(width: 30, height: 30)
        shadowView.layer.shadowColor = UIColor.gray.cgColor
        shadowView.layer.shadowOpacity = 0.8
        shadowView.layer.shadowRadius = 30
        
        uiImage = UIImage(named: imageNum)
        photoImageView.image = uiImage
    }
    
    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        makeImageNumber()
        
        uiImage = UIImage(named: imageNum)
        photoImageView.image = uiImage
    }
    
    @IBAction func prevImageButton(_ sender: UIButton) {
        let presentNum = imageNum.components(separatedBy: ".")[0]
        
        if let convertNum = Int(presentNum){
            if convertNum - 1 == 0{
                self.imageNum = changeImageNumber(number: 22)
            } else{
                self.imageNum = changeImageNumber(number: convertNum - 1)
            }
            
            uiImage = UIImage(named: imageNum)
            photoImageView.image = uiImage
        }
    }
    
    
    @IBAction func nextImageButtonNotRandom(_ sender: UIButton) {
        let presentNum = imageNum.components(separatedBy: ".")[0]
        
        if let convertNum = Int(presentNum){
            if convertNum + 1 == 23{
                self.imageNum = changeImageNumber(number: 1)
            } else{
                self.imageNum = changeImageNumber(number: convertNum + 1)
            }
            
            uiImage = UIImage(named: imageNum)
            photoImageView.image = uiImage
        }
    }
    
    func changeImageNumber(number: Int) -> String{
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
        var number = Int.random(in: 1...22)
        var randomImageNum: String = changeImageNumber(number: number)
        
        while imageNum == randomImageNum{
            number = Int.random(in: 1...22)
            randomImageNum = changeImageNumber(number: number)
        }
        
        imageNum = randomImageNum
    }
}
