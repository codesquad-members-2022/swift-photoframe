//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 김상혁 on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var photoLabel: UILabel!
    
    @IBOutlet weak var firstDescription: UILabel!
    
    @IBOutlet weak var nextButton: UIButton!
    @IBAction func nextButtonTouched(_ sender: Any) {
        photoLabel.textColor = .systemPink
        photoLabel.backgroundColor = .systemBlue
        photoLabel.alpha = 0.6
        
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "YellowViewController") as? YellowViewController else { return }
        nextVC.modalTransitionStyle = .partialCurl
        nextVC.modalPresentationStyle = .fullScreen
        self.present(nextVC, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        print("\nViewController가 로드되었다.")
        print(#file, #line, #function, #column)
        
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        
        photoLabel.translatesAutoresizingMaskIntoConstraints = false
        firstDescription.translatesAutoresizingMaskIntoConstraints = false
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        photoLabel.text = "Mase의 사진액자"
        photoLabel.textColor = .systemBlue
        photoLabel.font = photoLabel.font.withSize(CGFloat(30.0))
        photoLabel.textAlignment = .center
        photoLabel.backgroundColor = .systemGray6
        photoLabel.alpha = 0.9
        
        photoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        photoLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        firstDescription.text = "첫 번째 Scene"
        firstDescription.textColor = .systemBlue
        firstDescription.font = firstDescription.font.withSize(CGFloat(20.0))
        firstDescription.textAlignment = .center
        firstDescription.backgroundColor = .systemGray6
        firstDescription.alpha = 0.7
        
        firstDescription.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        firstDescription.centerYAnchor.constraint(equalTo: photoLabel.bottomAnchor, constant: 50).isActive = true
        
        
        nextButton.setTitle("다음", for: .normal)
        nextButton.backgroundColor = .systemGray4
        nextButton.layer.cornerRadius = 10
        
        nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: photoLabel.topAnchor, constant: -50).isActive = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("ViewController가 나타날 것이다.")
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("ViewController가 나타났다.")
        print(#file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("\nViewController가 사라질 것이다.")
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("ViewController가 사라졌다.")
        print(#file, #line, #function, #column)
    }
    
}
