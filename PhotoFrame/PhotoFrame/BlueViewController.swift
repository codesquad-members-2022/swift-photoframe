//
//  BlueViewController.swift
//  PhotoFrame
//
//  Created by 송태환 on 2022/02/18.
//

import UIKit

class BlueViewController: UIViewController {
    
    // MARK: - Properties
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var closeButton: UIButton!
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureButtons()
        print("\nSecond View", #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Second View", #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Second View", #function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Second View", #function)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Second View", #function)
    }
    
    // MARK: - Methods
    func configureButtons() {
        self.nextButton.addTarget(self, action: #selector(self.presentScene), for: .touchUpInside)
        self.closeButton.addTarget(self, action: #selector(self.closeScene), for: .touchUpInside)
    }
    
    @objc func presentScene() {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "GreenViewController") else { return }
        self.present(vc, animated: true, completion: nil)
    }
    
    @objc func closeScene() {
        self.dismiss(animated: true, completion: nil)
    }
    
}
