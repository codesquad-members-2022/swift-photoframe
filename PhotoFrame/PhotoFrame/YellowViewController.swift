//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by 김한솔 on 2022/02/16.
//

import UIKit

class YellowViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoView: UIView!
    @IBOutlet weak var photoFrameImageView: UIImageView!
    @IBOutlet weak var secondViewIndicatorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondViewIndicatorLabel.text = "Sol Album"
        self.photoImageView.image = UIImage(named: "01")
        self.photoImageView.layer.zPosition = 2.0
        self.photoFrameImageView.layer.zPosition = 1.0
        
        setLabelFont()
        setShadowView()
    }
    
    func setLabelFont() {
        secondViewIndicatorLabel.font = .systemFont(ofSize: 25)
        let fontSize = UIFont.boldSystemFont(ofSize: 35)
        let attributedString = NSMutableAttributedString(string: secondViewIndicatorLabel.text!)
        attributedString.addAttribute(.font, value: fontSize, range: (secondViewIndicatorLabel.text! as NSString).range(of: "Sol"))
        attributedString.addAttribute(.foregroundColor, value: UIColor.systemRed, range: (secondViewIndicatorLabel.text! as NSString).range(of: "Sol"))
        secondViewIndicatorLabel.attributedText = attributedString
    }
    
    func setShadowView() {
        self.photoView.layer.shadowOpacity = 1
        self.photoView.layer.shadowOffset = .zero
        self.photoView.layer.shadowColor = UIColor.gray.cgColor
        self.photoView.layer.shadowRadius = 5
    }
    
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        let newImage = chooseRandomImage()
        self.photoImageView.image = newImage
    }
    
    func chooseRandomImage() -> UIImage {
        let randomImageName = String((1...22).randomElement() ?? 1)
        return UIImage(named: randomImageName.count < 2 ? "0" + randomImageName : randomImageName) ?? UIImage(named: "01")!
    }
    
    @IBAction func selectButtonTouched(_ sender: UIButton) {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.allowsEditing = true
        imagePicker.delegate = self
        present(imagePicker, animated: true)
    }
}

extension YellowViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        var newImage: UIImage? = nil
        
        if let image = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            newImage = image
        } else if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            newImage = image
        }
        
        self.photoImageView.image = newImage
        picker.dismiss(animated: true, completion: nil)
    }
    
}
