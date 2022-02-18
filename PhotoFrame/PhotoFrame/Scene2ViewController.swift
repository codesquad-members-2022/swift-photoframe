//
//  ViewController2.swift
//  PhotoFrame
//
//  Created by 김동준 on 2022/02/14.
//

import Foundation
import UIKit

class Scene2ViewController: UIViewController {

    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var setImageButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAlbumLabelUI()
        setImageButtonUI()
    }
    private func setAlbumLabelUI(){
        albumLabel.text = "Ebony의 사진앨범!"
        albumLabel.font = UIFont.systemFont(ofSize: 24)
        albumLabel.textAlignment = .center
    }
    
    private func setImageButtonUI(){
        setImageButton.setTitle("이미지 변경", for: .normal)
        setImageButton.contentHorizontalAlignment = .center
    }
    
    @IBAction func setImageButtonTapped(_ sender: UIButton) {
        sender.setTitle("다른 이미지", for: .normal)
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: randomImageName())
    }
    
    private func randomImageName() -> String{
        let randomNum = Int.random(in: 1 ... 22)
        return randomNum < 10 ?  "0\(randomNum).jpg" : "\(randomNum).jpg"
    }
    
}

