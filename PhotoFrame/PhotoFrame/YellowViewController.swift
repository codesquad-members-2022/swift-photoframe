//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by 김동준 on 2022/02/15.
//

import Foundation
import UIKit

class YellowViewController: UIViewController{
    
    @IBOutlet weak var closeButton: UIButton!
    
    private lazy var greenVC = storyboard?.instantiateViewController(withIdentifier: "GreenVC")
    
    override func loadView() {
        super.loadView()
        print("\(self.classForKeyedArchiver!) loadView")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.backGround(color: .yellow)
        self.closeButtonText(button: closeButton)
        print("YellowViewController viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("YellowViewController viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("YellowViewController viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("YellowViewController viewWillDisAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("YellowViewController viewDidDisAppear")
    }
    
    @IBAction func openButtonTouched(_ sender: Any) {
        guard let greenVC = greenVC else {
            return
        }
        self.present(greenVC, animated: true, completion: nil)
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

extension YellowViewController: ColorViewControllerProtocol{
    func closeButtonText(button: UIButton) {
        button.setTitle("close", for: .normal)
    }
    
    func backGround(color: UIColor) {
        view.backgroundColor = color
    }
    
}
