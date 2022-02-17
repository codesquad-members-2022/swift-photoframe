//
//  ViewController.swift
//  PhotoFrame
//
//  Created by Bumgeun Song on 2022/02/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var photoDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoLabel.text = "Eddy의 사진 액자"
        photoLabel.font = .boldSystemFont(ofSize: CGFloat(40))
        
        photoLabel.textColor = UIColor( red: 46, green: 148, blue: 185)
        photoLabel.backgroundColor = UIColor(red: 255, green: 253, blue: 193, alpha: 0.5)
        
        photoDescription.text = "여기에는 설명이 들어갈 거예요"
        photoDescription.font = .italicSystemFont(ofSize: UIFont.labelFontSize)
        photoDescription.textColor = UIColor(red: 210, green: 85, blue: 101)
        photoDescription.backgroundColor = UIColor(red: 255, green: 253, blue: 193, alpha: 0.5)
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        photoLabel.textColor = UIColor(red: 255, green: 92, blue: 141)
        photoLabel.backgroundColor = UIColor(red: 82, green: 74, blue: 78)
        photoLabel.alpha = 0.7
    }
    @IBAction func pushButtonTouched(_ sender: UIButton) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let grayViewController = storyBoard.instantiateViewController(withIdentifier: "GrayViewController")
        navigationController?.pushViewController(grayViewController, animated: true)
    }
    
    @IBAction func unwindToFirstViewController(segue: UIStoryboardSegue) {
        // 이 뷰 컨트롤러가 unwind segue의 목적지가 될 수 있다는 것을 표시
        print("Unwind to First View Controller")
    }
}

extension UIColor {
    convenience init?(red: Int, green: Int, blue: Int, alpha: CGFloat = 1.0) {
        guard (0...255).contains(red)
                && (0...255).contains(green)
                && (0...255).contains(blue) else { return nil }
        
        let newRed = CGFloat(red) / 255
        let newGreen = CGFloat(green) / 255
        let newBlue = CGFloat(blue) / 255
        
        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: alpha)
    }
}

