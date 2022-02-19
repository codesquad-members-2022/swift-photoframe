//
//  PinkViewController.swift
//  PhotoFrame
//
//  Created by Selina on 2022/02/18.
//

import UIKit

class PinkViewController: UIViewController {

    @IBAction func closeButtonTouched(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "MintViewController") as! MintViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("PinkViewController", #function)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("PinkViewController", #function)
        print("***** Current Navigation Stack *****", navigationController?.children)
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("PinkViewController", #function)
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("PinkViewController", #function)
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("PinkViewController", #function)
    }
}
