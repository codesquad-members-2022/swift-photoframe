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
    }
    
    @IBAction func changeButton(_ sender: UIButton) {
        self.change.toggle()
        
        self.view.backgroundColor = change ? UIColor.yellow : UIColor.gray
        
        self.changeLabel.text = change ? "개킹받쥬~??" : "쿠쿠루삥뽕"
        self.changeLabel.font = change ? UIFont.systemFont(ofSize: 50) : UIFont.systemFont(ofSize: 40)
        self.changeLabel.textColor = change ? UIColor.red : UIColor.blue
    }
}
