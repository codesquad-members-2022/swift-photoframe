//
//  GreenViewController.swift
//  PhotoFrame
//
//  Created by 박진섭 on 2022/02/17.
//

import UIKit

class GreenViewController: UIViewController {

    //원래는 Segue에서는 다음 viewController가 없지만 ID를 이용해서 돌아가보기
    @IBAction func nextButtonTouched(_ sender: UIButton) {
//        guard let NextViewController = self.storyboard?.instantiateViewController(withIdentifier: "RedViewController") else { return }
//        self.navigationController?.pushViewController(NextViewController, animated: true)
    }
    
    //닫기 버튼 클릭시
    @IBAction func closeButtonTouched(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
//MARK: -- 라이프 사이클 체크
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewDidLoad - GreenViewController")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewWillAppear - GreenViewController")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewDidAppear - GreenViewController")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViwWillDisppaear - GreenViewController")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewDidDisappear - GreenViewController")
    }
    
    
}
