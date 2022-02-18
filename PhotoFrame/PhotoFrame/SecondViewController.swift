//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 송태환 on 2022/02/14.
//

import UIKit

class SecondViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    // MARK: - Properties
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    var nickName = "Cat"
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoImageView.image = UIImage(named: "01.jpg")
        self.nextButton.addTarget(self, action: #selector(self.presentScene), for: .touchUpInside)
        print("Secnd Tab View")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Secnd Tab View", #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Secnd Tab View", #function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Secnd Tab View", #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Secnd Tab View", #function)
    }
    
    // MARK: - Methods
    @IBAction func selectButtonTouched(_ sender: Any) {
        let num = Int.random(in: 0...22)
        self.photoImageView.image = UIImage(named: String(format: "%.2d.jpg", num))
    }
    
    @IBAction func unwind(segue : UIStoryboardSegue) {
        print("Unwind Action")
        self.view.backgroundColor = (segue.source as! GreenViewController).backgroundColor
    }
    
    @objc func presentScene() {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "BlueViewController") else { return }
        self.present(vc, animated: true, completion: nil)
    }
}
