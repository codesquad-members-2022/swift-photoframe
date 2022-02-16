//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by 김동준 on 2022/02/15.
//

import Foundation
import UIKit

class YellowViewController: UIViewController{
    
    @IBOutlet weak var closeBtn: UIButton!
    private var greenVC: UIViewController?
    
    override func loadView() {
        super.loadView()
        print("\(self.classForKeyedArchiver!) loadView")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(self.classForKeyedArchiver!) viewDidLoad")
        setViewSetting(color: .yellow,btn: self.closeBtn)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("\(self.classForKeyedArchiver!) viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("\(self.classForKeyedArchiver!) viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("\(self.classForKeyedArchiver!) viewWillDisAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("\(self.classForKeyedArchiver!) viewDidDisAppear")
    }
    
    @IBAction func openButtonTouched(_ sender: Any) {
        guard let greenVC = self.greenVC else {
            if let vc = self.storyboard?.instantiateViewController(withIdentifier: "GreenVC") else{
                
            }
            self.greenVC = vc
            self.present(vc, animated: true, completion: nil)
            return
        }

        self.present(greenVC, animated: true, completion: nil)
    }
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}

extension UIViewController{
    func setViewSetting(color: UIColor,btn: UIButton){
        view.backgroundColor = color
        btn.setTitle("close", for: .normal)
    }
}
