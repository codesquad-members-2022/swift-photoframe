//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 송태환 on 2022/02/14.
//

import UIKit

class FirstViewController: UIViewController {
    
    // MARK: - Properties
    @IBOutlet weak var photoLabel: UILabel!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoLabel.text = "Welcome!"
        self.photoLabel.font = UIFont(name: "Chalkduster", size: 42)
        self.photoLabel.textColor = self.photoLabel.textColor.withAlphaComponent(0.8)
        print("Root View", #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Root View", #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Root View", #function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Root View", #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Root View", #function)
    }

    // MARK: - Methods
    @IBAction func editingChanged(_ sender: Any) {
        print("Editing Change - 키보드 입력 시 트리거")
    }
    
    @IBAction func editingDidBegin(_ sender: Any) {
        print("Editing Did Begin - Text Field 가 포커스 될 때 트리커")
    }
    
    @IBAction func editingDidEnd(_ sender: Any) {
        print("Editing Did End - Text Field 가 blur 될 때 트리커")
    }
}
