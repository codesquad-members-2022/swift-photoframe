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
        super.viewDidLoad()
        
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        
        closeButton.setTitle("닫기", for: .normal)
        closeButton.backgroundColor = .lightGray
        closeButton.layer.cornerRadius = 10
        
        closeButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        closeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 30).isActive = true
    }
}
