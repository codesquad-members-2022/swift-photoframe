//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 박진섭 on 2022/02/14.
//

import UIKit

class FirstViewController:UIViewController {
    
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        configureLabel()
        print("ViewDidLoad - FirstViewController")
    }
    
    //닫기 버튼 클릭시
    @IBAction func closeButtonTouched(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        
    }
    //다음 버튼 클릭시
    @IBAction func NextButtonTouched(_ sender: UIButton) {
        guard let NextViewController = self.storyboard?.instantiateViewController(withIdentifier: "PurpleViewController") else { return }
        self.navigationController?.pushViewController(NextViewController, animated: true)
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
    }
    
    //MARK: -- 라이프 사이클 체크
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            print("ViewWillAppear - FirstViewController")
        }
        
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            print("ViewDidAppear - FirstViewController")
        }
        
        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            print("ViwWillDisppaear - FirstViewController")
        }
        
        override func viewDidDisappear(_ animated: Bool) {
            super.viewDidDisappear(animated)
            print("ViewDidDisappear - FirstViewController")
        }
    
    
}
