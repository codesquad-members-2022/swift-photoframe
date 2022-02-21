//
//  GreenViewController.swift
//  PhotoFrame
//
//  Created by 송태환 on 2022/02/18.
//

import UIKit

class GreenViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var closeButton: UIButton!
    
    var backgroundColor = UIColor.green
    
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
        self.closeButton.addTarget(self, action: #selector(self.closeScene), for: .touchUpInside)
    }
    
    @objc func closeScene() {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! SecondViewController
        destinationVC.photoImageView.image = UIImage(named: "01.jpg")
    }
}
