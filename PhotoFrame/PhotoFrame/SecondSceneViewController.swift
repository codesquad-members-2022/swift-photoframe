//
//  SecondSceneViewController.swift
//  PhotoFrame
//
//  Created by juntaek.oh on 2022/02/17.
//

import UIKit
import PhotosUI

class SecondSceneViewController: UIViewController {
    private var imageNum: String = "01.jpg"
    private var uiImage: UIImage?
    private var imagePicker = PHPickerConfiguration()
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var shadowView: UIView!
    
    func changeImageNumber(number: Int) -> String{
        var imageNum: String{
            if number < 10{
                let index: String = "0\(number).jpg"
                return index
            } else{
                let index: String = "\(number).jpg"
                return index
            }
        }
        return imageNum
    }
    
    func makeImageNumber(){
        var number = Int.random(in: 1...22)
        var randomImageNum: String = changeImageNumber(number: number)
        
        while imageNum == randomImageNum{
            number = Int.random(in: 1...22)
            randomImageNum = changeImageNumber(number: number)
        }
        
        imageNum = randomImageNum
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.contentMode = .scaleAspectFill
        photoImageView.layer.cornerRadius = 30
        photoImageView.clipsToBounds = true
        
        shadowView.layer.cornerRadius = 30
        shadowView.layer.shadowOffset = CGSize(width: 30, height: 30)
        shadowView.layer.shadowColor = UIColor.gray.cgColor
        shadowView.layer.shadowOpacity = 0.8
        shadowView.layer.shadowRadius = 30
        
        uiImage = UIImage(named: imageNum)
        photoImageView.image = uiImage
    }
    
    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        makeImageNumber()
        
        uiImage = UIImage(named: imageNum)
        photoImageView.image = uiImage
    }
    
    @IBAction func prevImageButton(_ sender: UIButton) {
        let presentNum = imageNum.components(separatedBy: ".")[0]
        
        if let convertNum = Int(presentNum){
            if convertNum - 1 == 0{
                self.imageNum = changeImageNumber(number: 22)
            } else{
                self.imageNum = changeImageNumber(number: convertNum - 1)
            }
            
            uiImage = UIImage(named: imageNum)
            photoImageView.image = uiImage
        }
    }
    
    @IBAction func nextImageButtonNotRandom(_ sender: UIButton) {
        let presentNum = imageNum.components(separatedBy: ".")[0]
        
        if let convertNum = Int(presentNum){
            if convertNum + 1 == 23{
                self.imageNum = changeImageNumber(number: 1)
            } else{
                self.imageNum = changeImageNumber(number: convertNum + 1)
            }
            
            uiImage = UIImage(named: imageNum)
            photoImageView.image = uiImage
        }
    }
    
    @IBAction func selectButtonTouched(_ sender: UIButton) {
        imagePicker.selectionLimit = 1
        imagePicker.filter = .images
        
        let picker = PHPickerViewController(configuration: imagePicker)
        picker.delegate = self
        self.present(picker, animated: true)
    }
}

extension SecondSceneViewController: PHPickerViewControllerDelegate{
    // 함수 내부는 선택된 하나의 이미지를 imageView에 출력시키는 로직 구현
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        // 선택 완료 or cancel 시, view dismiss
        picker.dismiss(animated: true)
        
        // 선택된 결과값들 중 첫번째 결과값의 itemProvider를 할당
        let itemProvider = results.first?.itemProvider
        
        // 가져온 itemProvider 값이 nil이 아닌지, 이를 통해서 UIImage로 지정한 타입으로 로드 가능한 지 확인
        if let itemProvider = itemProvider, itemProvider.canLoadObject(ofClass: UIImage.self){
            // 지정한 타입으로 로드. completionHandler로 NSItemProviderReading과 error 전달
            itemProvider.loadObject(ofClass: UIImage.self){ (image, error) in
                // itemProvider는 background async 작업. UI 관련 업데이트는 main 스레드.
                DispatchQueue.main.async {
                    self.photoImageView.image = image as? UIImage
                }
            }
        } else{}
    }

}
