//
//  PurpleViewController.swift
//  PhotoFrame
//
//  Created by 송태환 on 2022/02/14.
//

import UIKit

class PurpleViewController: UIViewController {
    
    // MARK: - Properties
    @IBOutlet weak var homeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeButton.addTarget(self, action: #selector(self.goHome), for: .touchUpInside)
        print("\nThird View", #function)
    }
    
    // MARK: - LifeCycle
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Third View", #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Third View", #function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Third View", #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Third View", #function)
    }

    // MARK: - Methods
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func goHome() {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
