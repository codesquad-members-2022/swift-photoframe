//
//  StudyViewController.swift
//  PhotoFrame
//
//  Created by seongha shin on 2022/02/16.
//

import Foundation
import UIKit

class StudyViewController: UIViewController {
    
    @IBOutlet weak var testButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testButton.addTarget(self, action: #selector(onTestButtonTapped_1), for: .touchUpInside)
        testButton.addTarget(self, action: #selector(onTestButtonTapped_2), for: .touchUpInside)
        testButton.addTarget(self, action: #selector(onTestButtonTapped_3), for: .touchUpInside)
        testButton.addTarget(self, action: #selector(onTestButtonTapped_4), for: .touchUpInside)
        testButton.addTarget(self, action: #selector(onTestButtonTapped_5), for: .touchUpInside)
    }
    
    @objc
    func onTestButtonTapped_1() {
        print("onTestButtonTapped_1")
    }
    
    @objc
    func onTestButtonTapped_2() {
        print("onTestButtonTapped_2")
    }
    
    @objc
    func onTestButtonTapped_3() {
        print("onTestButtonTapped_3")
    }
    
    @objc
    func onTestButtonTapped_4() {
        print("onTestButtonTapped_4")
    }
    
    @objc
    func onTestButtonTapped_5() {
        print("onTestButtonTapped_5")
    }
}
