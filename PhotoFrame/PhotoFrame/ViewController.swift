//
//  ViewController.swift
//  PhotoFrame
//
//  Created by Selina on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    let firstButton = UIButton(type: UIButton.ButtonType.system) as UIButton
    
    @objc func buttonAction(_ sender:UIButton!) {
        print("Button tapped")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstButton.frame = CGRect(x: self.view.center.x, y: 150, width: 150, height: 45)
        firstButton.backgroundColor = UIColor.systemPink
        firstButton.setTitle("Tap me!", for: UIControl.State.normal)
        firstButton.tintColor = .white
        firstButton.addTarget(self, action: #selector(self.buttonAction), for: .touchUpInside)
        
        
        
        // subView 추가
        self.view.addSubview(firstButton)
        self.view.addSubview(firstLabel)
        self.view.addSubview(firstDescription)
        
        // Constraints를 코드로 작성하기 위함.
//        self.firstButton.translatesAutoresizingMaskIntoConstraints = false
        self.firstLabel.translatesAutoresizingMaskIntoConstraints = false
        self.firstDescription.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        // firstLabel 속성
        self.firstLabel.text = "Selina의 사진액자"
        self.firstLabel.textColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        
        self.firstLabel.backgroundColor = UIColor(red: 250 / 255.0, green: 197 / 255.0, blue: 210 / 255.0, alpha: 1)
        self.firstLabel.backgroundColor = UIColor(cgColor: CGColor(red: 250 / 255.0, green: 197 / 255.0, blue: 210 / 255.0, alpha: 1))
        
//        self.firstLabel.font = UIFont.systemFont(ofSize: 40)
//        self.firstLabel.font = UIFont.italicSystemFont(ofSize: 40)
        self.firstLabel.font = UIFont.boldSystemFont(ofSize: 40)
        
        // 세로 위치 중 가운데로 배치
        self.firstLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        // 가로 위치 중 가운데로 배치
        self.firstLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        // firstDescription 속성
        self.firstDescription.textColor = UIColor.systemGray
        self.firstDescription.font = UIFont.systemFont(ofSize: 15)
    
        self.firstDescription.topAnchor.constraint(equalTo: firstLabel.topAnchor, constant: 60).isActive = true
        self.firstDescription.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
