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
    
    private lazy var greenViewController = storyboard?.instantiateViewController(withIdentifier: "GreenVC")
    
    override func loadView() {
        super.loadView()
        print("YellowViewController loadView")
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
        guard let greenViewController = self.greenViewController else {
            return
        }
        self.navigationController?.pushViewController(greenViewController, animated: true)
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
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
