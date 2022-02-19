//
//  MintViewController.swift
//  PhotoFrame
//
//  Created by Selina on 2022/02/18.
//

import UIKit

class MintViewController: UIViewController {

    let closeButton = UIButton(type: UIButton.ButtonType.roundedRect) as UIButton
    
    @objc func closeButtonTouched(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MintViewController", #function)
        
//        self.view.addSubview(closeButton)
//        // 이렇게 하는 방법은 addSubview의 위치가 상관없고, translatesAutoresizingMaskIntoConstraints는 true여야한다. false이면 위치가 지정이 안돼. 그냥
//        self.closeButton.frame = CGRect(x: 20, y: 20, width: 100, height: 45)
//        self.closeButton.backgroundColor = .white
//        self.closeButton.setTitle("닫기", for: .normal)
//        self.closeButton.tintColor = .black
//        self.closeButton.addTarget(self, action: #selector(self.closeButtonTouched(_:)), for: .touchUpInside)
        
        
        // constraint를 주는 방법은 subView가 반드시 제일 먼저 와야하고, translatesAUtoresizingMaskIntoConstraints는 false여야한다. true이면 안된다.
        self.view.addSubview(closeButton)
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        closeButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        closeButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 150).isActive = true
        closeButton.widthAnchor.constraint(equalToConstant: 150).isActive = true
        closeButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        closeButton.backgroundColor = .white
        closeButton.setTitle("닫기", for: .normal)
        closeButton.tintColor = .black
        closeButton.addTarget(self, action: #selector(self.closeButtonTouched(_:)), for: .touchUpInside)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("MintViewController", #function)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("MintViewController", #function)
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("MintViewController", #function)
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("MintViewController", #function)
    }
}
