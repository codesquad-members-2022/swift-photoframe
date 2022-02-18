//
//  ViewController2.swift
//  PhotoFrame
//
//  Created by 김동준 on 2022/02/14.
//

import Foundation
import UIKit

class Scene2ViewController: UIViewController {


    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var setImageButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var photoFrameImageView: UIImageView!
    @IBOutlet weak var selectPhotoButton: UIButton!
    private lazy var photoPickerController = UIImagePickerController()
    private var photoDelegate: PhotoPickerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAlbumLabelUI()
        setButtonsUI()
        setFrameImageViewUI()
        setImageFrameZPosition()
    }
    
    private func setAlbumLabelUI(){
        albumLabel.text = "Ebony의 사진앨범!"
        albumLabel.font = UIFont.systemFont(ofSize: 24)
        albumLabel.textAlignment = .center
    }
    
    private func setButtonsUI(){
        setImageButton.setTitle("이미지 변경", for: .normal)
        setImageButton.contentHorizontalAlignment = .center
        selectPhotoButton.setTitle("사진 선택", for: .normal)
        selectPhotoButton.contentHorizontalAlignment = .center
    }
    
    private func setFrameImageViewUI(){
        photoFrameImageView.image = UIImage(named: "photoframe-border.jpg")
    }
    
    private func setImageFrameZPosition(){
        photoFrameImageView.layer.zPosition = 1
        imageView.layer.zPosition = 10
    }
    
    @IBAction func setImageButtonTapped(_ sender: UIButton) {
        sender.setTitle("다른 이미지", for: .normal)
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: randomImageName())
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        if photoPickerController.delegate == nil{
            setPhotoPickerState()
            present(photoPickerController, animated: true, completion: nil)
        }
        present(photoPickerController, animated: true, completion: nil)
    }
    
    private func randomImageName() -> String{
        let randomNum = Int.random(in: 1 ... 22)
        return randomNum < 10 ?  String.init(format: "0%d.jpg", randomNum) : String.init(format: "%d.jpg", randomNum)
    }
    
    private func setPhotoPickerState(){
        photoPickerController.sourceType = .photoLibrary
        photoPickerController.allowsEditing = false
        photoDelegate = PhotoPickerDelegate(self)
        photoPickerController.delegate = photoDelegate
    }
    
}

extension Scene2ViewController: PhotoCallbackProtocol{
    func photoCallback(_ image: UIImage) {
        imageView.image = image
    }
    
}
