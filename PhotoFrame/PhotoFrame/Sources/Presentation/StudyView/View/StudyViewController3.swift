//
//  StudyViewController3.swift
//  PhotoFrame
//
//  Created by seongha shin on 2022/02/17.
//

import Foundation
import UIKit

class StudyViewController3: UIViewController {
    
    @IBOutlet weak var testButton: CustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testButton.addAction(UIAction(handler: { _ in self.onTestButtonTapped(event: "touchDown")}), for: .touchDown)
        testButton.addAction(UIAction(handler: { _ in self.onTestButtonTapped(event: "touchDownRepeat")}), for: .touchDownRepeat)
        testButton.addAction(UIAction(handler: { _ in self.onTestButtonTapped(event: "touchDownRepeat")}), for: .touchDownRepeat)
        testButton.addAction(UIAction(handler: { _ in self.onTestButtonTapped(event: "touchDragInside")}), for: .touchDragInside)
        testButton.addAction(UIAction(handler: { _ in self.onTestButtonTapped(event: "touchDragOutside")}), for: .touchDragOutside)
        testButton.addAction(UIAction(handler: { _ in self.onTestButtonTapped(event: "touchDragEnter")}), for: .touchDragEnter)
        testButton.addAction(UIAction(handler: { _ in self.onTestButtonTapped(event: "touchDragExit")}), for: .touchDragExit)
        testButton.addAction(UIAction(handler: { _ in self.onTestButtonTapped(event: "touchUpInside")}), for: .touchUpInside)
        testButton.addAction(UIAction(handler: { _ in self.onTestButtonTapped(event: "touchUpOutside")}), for: .touchUpOutside)
        testButton.addAction(UIAction(handler: { _ in self.onTestButtonTapped(event: "touchCancel")}), for: .touchCancel)
    }
    
    @objc
    func onTestButtonTapped(event: String) {
        print(event)
    }
}


