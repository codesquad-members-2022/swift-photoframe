//
//  ViewController.swift
//  PhotoFrame
//
//  Created by dale on 2022/02/14.
//

import UIKit
class ViewContollerFlow :UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#file, #line, #function, #column)
    }
    override  func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#file, #line, #function, #column)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#file, #line, #function, #column)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#file, #line, #function, #column)
    }
}
class ViewController: ViewContollerFlow {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoLabel.text = "dale's Photo Album"
        self.photoLabel.textColor = .blue
        self.photoLabel.backgroundColor = .yellow
        self.photoLabel.font.withSize(30)
        self.photoLabel.textAlignment = .center
        print(#file, #line, #function, #column)
    }

    @IBAction func nextButtonTouched(_ sender: Any) {
        self.photoLabel.textColor = UIColor.blue
        self.photoLabel.backgroundColor = UIColor.red
        self.photoLabel.alpha = 0.5
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        guard let randomInt = (1...22).randomElement() else {return}
        let randomString = String.init(format: "%02d", arguments: [randomInt])
        self.photoImageView.image = UIImage(named: "\(randomString).jpg")
    }
    @IBAction func selectButtonTouched(_ sender: Any) {
        
    }
}

