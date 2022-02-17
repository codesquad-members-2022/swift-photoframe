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
        self.printNavigationChild()
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    private func printNavigationChild(){
        guard let vcArr = self.navigationController?.viewControllers else{
            return
        }
        print("NavigationViewController의 ViewController는 \(vcArr.count)개 입니다.")
        for vc in vcArr{
            print(vc)
        }
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
