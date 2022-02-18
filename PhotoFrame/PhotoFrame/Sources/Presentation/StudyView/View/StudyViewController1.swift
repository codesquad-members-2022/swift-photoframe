//
//  StudyViewController.swift
//  PhotoFrame
//
//  Created by seongha shin on 2022/02/16.
//

import Foundation
import UIKit

class StudyViewController1: UIViewController {
    
    @IBOutlet weak var testButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //addTarget으로 버튼 이벤트 연결하기
        testButton.addTarget(self, action: #selector(onTestButtonTapped_1), for: .touchUpInside)
        testButton.addTarget(self, action: #selector(onTestButtonTapped_2), for: .touchUpInside)
        testButton.addTarget(self, action: #selector(onTestButtonTapped_3), for: .touchUpInside)
        
        //addAction으로 버튼 이벤트 연결하기 1
        testButton.addAction(UIAction(handler: { _ in
            self.onTestButtonTapped_9()
        }), for: .touchUpInside)

        //addAction으로 버튼 이벤트 연결하기 2
        let action = UIAction(title: "testEvent") { _ in
            self.onTestButtonTapped_10()
        }
        testButton.addAction(action, for: .touchUpInside)
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
    
    @IBAction func onTestButtonTapped_6(_ sender: Any) {
        print("@IBAction onTestButtonTapped_6")
    }
    
    @IBAction func onTestButtonTapped_7(_ sender: Any) {
        print("@IBAction onTestButtonTapped_7")
    }
    
    @IBAction func onTestButtonTapped_8(_ sender: Any) {
        print("@IBAction onTestButtonTapped_8")
    }
    
    func onTestButtonTapped_9() {
        print("UIAction onTestButtonTapped_9")
    }
    
    func onTestButtonTapped_10() {
        print("UIAction onTestButtonTapped_10")
    }
}
