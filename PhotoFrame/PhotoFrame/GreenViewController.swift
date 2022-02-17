//
//  GreenViewController.swift
//  PhotoFrame
//
//  Created by 김동준 on 2022/02/15.
//

import Foundation
import UIKit

class GreenViewController: UIViewController{
    
    @IBOutlet weak var closeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.closeButtonText(button: closeButton)
        self.backGround(color: .green)
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

extension GreenViewController: ColorViewControllerProtocol{
    func closeButtonText(button: UIButton) {
        button.setTitle("close", for: .normal)
    }
    
    func backGround(color: UIColor) {
        view.backgroundColor = color
    }
    
    
}
