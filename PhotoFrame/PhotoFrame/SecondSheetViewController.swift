//
//  SecondSheetViewController.swift
//  PhotoFrame
//
//  Created by juntaek.oh on 2022/02/15.
//

import UIKit

class SecondSheetViewController: UIViewController {
    var change = true
    var defaultText = ""
    
    @IBOutlet weak var changeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.changeLabel.text = defaultText
        self.changeLabel.font = UIFont.systemFont(ofSize: 20)
        self.changeLabel.textColor = UIColor.purple
        
        print("ViewDidLoad - SSVC")
        print(#file, #line, #function, #column)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("ViewWillAppear - SSVC")
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("ViewDidAppear - SSVC")
        print(#file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("ViewWillDisappear - SSVC")
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("ViewDidDisappear - SSVC")
        print(#file, #line, #function, #column)
    }
    
    @IBAction func changeButton(_ sender: UIButton) {
        self.change.toggle()
        
        self.view.backgroundColor = change ? UIColor.yellow : UIColor.gray
        
        self.changeLabel.text = change ? "개킹받쥬~??" : "쿠쿠루삥뽕"
        self.changeLabel.font = change ? UIFont.systemFont(ofSize: 50) : UIFont.systemFont(ofSize: 40)
        self.changeLabel.textColor = change ? UIColor.red : UIColor.blue
    }
    
    @IBAction func testBack(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
        
        /*
        // rootView에서의 dismiss를 통해 앞서 presenting되던 VC 닫고 rootView로 돌아옴
        if let vc = self.presentingViewController{
           if let root = vc.presentingViewController{
               root.dismiss(animated: true)
           }
        }
         */
    }
}
