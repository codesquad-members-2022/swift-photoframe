//
//  StudyViewController.swift
//  PhotoFrame
//
//  Created by seongha shin on 2022/02/16.
//

import Foundation
import UIKit

class CustomButton: UIButton {
    var testValue: String = ""
}

class StudyViewController: UIViewController {
    
    @IBOutlet weak var testButton1: CustomButton!
    @IBOutlet weak var testButton2: CustomButton!
    @IBOutlet weak var testButton3: CustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testButton1.addTarget(self, action: #selector(onTestButtonTapped(_:)), for: .touchUpInside)
        testButton1.testValue = "testButton1"
        testButton2.addTarget(self, action: #selector(onTestButtonTapped(_:)), for: .touchUpInside)
        testButton2.testValue = "testButton2"
        testButton3.addTarget(self, action: #selector(onTestButtonTapped(_:)), for: .touchUpInside)
        testButton3.testValue = "testButton3"
    }
    
    @objc
    func onTestButtonTapped(_ sender: CustomButton) {
        print("onTestButtonTapped - \(sender.testValue)")
    }
}

