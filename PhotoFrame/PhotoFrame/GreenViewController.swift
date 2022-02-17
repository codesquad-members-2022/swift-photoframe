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
//        let NextViewController = self.storyboard?.instantiateViewController(withIdentifier: "RedViewController") //pupleViewController를 주어준 ID값으로 정의한다.
//        NextViewController?.modalPresentationStyle = .fullScreen //modal을 어떤방식으로 보여줄것인지 정한다.
//        NextViewController?.modalTransitionStyle = .coverVertical //trabsition 즉 화면 전환시 어떻게 보여줄지 정한다.
//        self.show(NextViewController ?? UIViewController(), sender: nil) //present해준다 단, NextViewController가 잘못된 ID값등으로 없을 수 있으니 만약 없다면 그냥 빈 UIViewController를 보여주게 한다.
    }
    
    //닫기 버튼 클릭시
    @IBAction func closeButtonTouched(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
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
