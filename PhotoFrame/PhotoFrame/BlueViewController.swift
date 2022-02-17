//
//  BlueViewController.swift
//  PhotoFrame
//
//  Created by 김상혁 on 2022/02/17.
//

import UIKit

class BlueViewController: UIViewController {
    
    @IBOutlet weak var closeButton: UIButton!
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        print("\nBlueViewController가 로드되었다.")
        print(#file, #line, #function, #column)
        super.viewDidLoad()
        
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        
        closeButton.setTitle("닫기", for: .normal)
        closeButton.backgroundColor = .lightGray
        closeButton.layer.cornerRadius = 10
        
        closeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        closeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("BlueViewController가 나타날 것이다.")
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("BlueViewController가 나타났다.")
        print(#file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("\nBlueViewController가 사라질 것이다.")
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("BlueViewController가 사라졌다.")
        print(#file, #line, #function, #column)
    }
}
