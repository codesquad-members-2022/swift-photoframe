//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 박진섭 on 2022/02/14.
//

import UIKit

class FirstViewController:UIViewController {
    
<<<<<<< HEAD
    override func viewDidLoad() {
        
=======
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        configureLabel()
    }
    
    func configureLabel() {
        self.photoLabel.text = "피그백's 사진액자"
        self.photoLabel.textColor = .red //색깔
        self.photoLabel.textAlignment = .center //정렬
        self.photoLabel.font = .systemFont(ofSize: 40.0, weight: .bold) //사이즈,폰트
        
        self.descriptionLabel.text = "이 액자를 본 당신은 오늘 행운이 찾아올겁니다!"
        self.descriptionLabel.textColor = .secondaryLabel //색깔
        self.descriptionLabel.textAlignment = .center //정렬
        self.descriptionLabel.font = .systemFont(ofSize: 20.0, weight: .light) //사이즈,폰트
>>>>>>> dc09ab294b4b0390cd229051027e94b11c4ee625
    }
    
}
