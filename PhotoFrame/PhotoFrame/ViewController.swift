//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 김한솔 on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var photoLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoLabel.text = "First View"
        self.photoLabel.textColor = .systemBackground
        self.photoLabel.backgroundColor = .systemGray
        self.photoLabel.alpha = 0.5
        self.photoLabel.font = .systemFont(ofSize: 70)
        print(#file, #line, #function, #column)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    @IBAction func nextButtonTouched(_ sender: UIButton) {
    }
    
    
}

