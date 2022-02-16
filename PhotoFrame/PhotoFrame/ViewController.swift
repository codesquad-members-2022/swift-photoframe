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
    let thirdButton = UIButton()
    
    @objc func buttonTapped(_ sender: UIButton) {
        print("\(sender.titleLabel?.text) Button tapped")
        
        switch sender {
        case firstButton:
            self.firstLabel.text = "첫번째 버튼"
        default:
            self.firstLabel.text = "세번째 버튼!"
        }
    }
    
    
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        print("Second Button Tapped")
        self.firstLabel.textColor = UIColor.blue
        self.firstLabel.backgroundColor = UIColor.yellow
        self.firstLabel.alpha = 0.5
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.firstButton.frame = CGRect(x: self.view.center.x, y: 150, width: 150, height: 45)
        self.firstButton.backgroundColor = UIColor.systemPink
        self.firstButton.setTitle("Tap me!", for: UIControl.State.normal)
        self.firstButton.tintColor = .white
        self.firstButton.addTarget(self, action: #selector(self.buttonTapped), for: .touchUpInside)
        
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
        
        
        // ThirdButton
        self.view.addSubview(thirdButton)
        thirdButton.translatesAutoresizingMaskIntoConstraints = false
        
        thirdButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        thirdButton.widthAnchor.constraint(equalToConstant: 275).isActive = true
        thirdButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        thirdButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 150).isActive = true
        
        thirdButton.setTitle("세번째 버튼입니당", for: .normal)
        thirdButton.setTitleColor(.white, for: .normal)
        thirdButton.backgroundColor = .purple
        thirdButton.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
    }
}
