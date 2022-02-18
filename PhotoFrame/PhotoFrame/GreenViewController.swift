//
//  GreenViewController.swift
//  PhotoFrame
//
//  Created by 송태환 on 2022/02/18.
//

import UIKit

class GreenViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet var homeButton: UIButton!
    @IBOutlet weak var closeButton: UIButton!
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureButtons()
        print("\nFirst View", #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("First View", #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("First View", #function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("First View", #function)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("First View", #function)
    }
    
    // MARK: - Methods
    func configureButtons() {
        self.homeButton.addTarget(self, action: #selector(self.backToHome), for: .touchUpInside)
        self.closeButton.addTarget(self, action: #selector(self.closeScene), for: .touchUpInside)
    }
    
    @objc func backToHome() {
        self.performSegue(withIdentifier: "goHome", sender: self)   
    }
    
    @objc func closeScene() {
        self.dismiss(animated: true, completion: nil)
    }
}
