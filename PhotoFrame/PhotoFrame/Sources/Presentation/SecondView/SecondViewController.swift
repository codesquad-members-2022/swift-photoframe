//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by seongha shin on 2022/02/14.
//

import Foundation
import UIKit
import PhotosUI

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
        
    var picker: PHPickerViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        var config = PHPickerConfiguration()
        config.selectionLimit = 1
        config.filter = .any(of: [.images])
        picker = PHPickerViewController(configuration: config)
        picker?.delegate = self
        setRandomImage()
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        setRandomImage()
    }
    
    private func setRandomImage() {
        let randomIndex = Int.random(in: 1...22)
        self.photoImageView.image = UIImage(named: String(format: "%02d.jpg", randomIndex))
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        guard let picker = self.picker else {
            return
        }
        
        self.present(picker, animated: true)
    }
}

extension SecondViewController: PHPickerViewControllerDelegate {
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        
        picker.dismiss(animated: true)
        
        guard let itemProvider = results.first?.itemProvider,
              itemProvider.canLoadObject(ofClass: UIImage.self) else {
            return
        }
        
        itemProvider.loadObject(ofClass: UIImage.self) { image, error in
            DispatchQueue.main.async {
                self.photoImageView.image = image as? UIImage
            }
        }
    }
    
    
}
