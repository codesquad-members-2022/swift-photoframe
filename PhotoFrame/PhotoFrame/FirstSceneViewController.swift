//
//  FirstSceneViewController.swift
//  PhotoFrame
//
//  Created by 백상휘 on 2022/02/14.
//

import UIKit

class FirstSceneViewController: UIViewController {

<<<<<<< HEAD
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstLabel.text = "Beck의 사진액자"
        
        editLabel(firstLabel)
        editLabel(firstDescription)
    }
    
    func editLabel(_ label: UILabel) {
        
        label.textColor = .systemBrown
        label.backgroundColor = .systemMint
        label.layer.opacity = 0.5
        
        let editFontSize: UIFont = {
            label.font.withSize(label.font.pointSize + 7)
        }()
        
        label.font = editFontSize
=======
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        // Do any additional setup after loading the view.
>>>>>>> fc53ee0 (Convert InitialViewController as UITabBarController)
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
