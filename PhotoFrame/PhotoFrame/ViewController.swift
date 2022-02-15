//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 최예주 on 2022/02/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var photoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureLabel()
//        print(#file, #line, #function, #column)
        

        // Do any additional setup after loading the view.
    }
    
    
    func configureLabel() {
        
        photoLabel.text = "Chez의 사진액자"
        photoLabel.textColor = .blue
        photoLabel.backgroundColor = .yellow
        photoLabel.alpha = 0.5
        photoLabel.font = UIFont.systemFont(ofSize: 50)
        
        photoLabel.sizeToFit()  // 사이즈를 텍스트에 맞게 조정
        photoLabel.center.x = self.view.frame.width/2
        
        
        
        
        
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
