//
//  PhotoPickerDelegate.swift
//  PhotoFrame
//
//  Created by 김동준 on 2022/02/18.
//

import Foundation
import UIKit

class PhotoPickerDelegate: NSObject{
    private let callback: PhotoCallbackProtocol

    init(_ callback: PhotoCallbackProtocol){
        self.callback = callback
    }
    
}

extension PhotoPickerDelegate: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        var newImage: UIImage? = nil
        if let possibleImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage { // 수정된 이미지가 있을 경우
            newImage = possibleImage
        } else if let possibleImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage { // 오리지널 이미지가 있을 경우
            newImage = possibleImage
        }
        guard let newImage = newImage else {
            return
        }
        callback.photoCallback(newImage)
        picker.dismiss(animated: true)
    }
}
