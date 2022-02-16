//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 김동준 on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    //lazy var yellowVC = YellowViewController() -> 스토리보드에서 ViewController를 찾아오지 않을 시 GreenViewController에 View 생성이 안됨.
    private var yellowVC: UIViewController?
    
    override func loadView() {
        super.loadView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(#file, #line, #function, #column)
        firstLabel.text = "ebony의 액자"
        firstLabel.textAlignment = .center
        firstLabel.font = UIFont.systemFont(ofSize: 24)
        
        firstDescription.text = "first description"
        firstDescription.textColor = .blue
        firstDescription.textAlignment = .center
        firstDescription.font = UIFont.systemFont(ofSize: 18)
        
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.firstLabel.textColor = UIColor.blue
        self.firstLabel.backgroundColor = UIColor.yellow
        self.firstLabel.alpha = 0.5
        guard let yellowVC = yellowVC else {
            print("yellowVC tapped")
            if let vc = self.storyboard?.instantiateViewController(withIdentifier: "YellowVC"){
                self.yellowVC = vc
                print("yellowVC was nil")
                present(vc, animated: true, completion: nil)
            }
            return
        }
        
        
        self.present(yellowVC, animated: true, completion: nil)
    }
}

