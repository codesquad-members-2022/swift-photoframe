//
//  ViewController.swift
//  PhotoFrame
//
//  Created by jsj on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {

    // MARK:- IBOutlet
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(#file, #line, #function, #column)
        
        self.firstDescription.text = "잡다한 사진 저장소"
        self.firstDescription.textColor = .gray
    }
    
    // MARK:- IBAction
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.firstLabel.textColor = .blue
        self.firstLabel.backgroundColor = .yellow
        self.firstLabel.alpha = 0.5
        
        guard let blueViewController = self.storyboard?.instantiateViewController(withIdentifier: "blueViewController") as? BlueViewController else {
            return
        }
        self.present(blueViewController, animated: true, completion: nil)
    }
    
    @IBAction func colorButtonTouched(_ sender: UIButton) {
        var buttonTitle: String = "Touched"
        switch sender.tag {
        case 0:
            buttonTitle += "Blue"
        case 1:
            buttonTitle += "Orange"
        case 2:
            buttonTitle += "Purple"
        default:
            break
        }
        sender.setTitle(buttonTitle, for: .normal)
    }
}
