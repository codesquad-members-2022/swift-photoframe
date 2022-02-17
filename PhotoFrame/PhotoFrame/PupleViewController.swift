//
//  PupleViewController.swift
//  PhotoFrame
//
//  Created by 박진섭 on 2022/02/17.
//

import UIKit

class PupleViewController: UIViewController {
    
    //다음 버튼 클릭시
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        let NextViewController = self.storyboard?.instantiateViewController(withIdentifier: "RedViewController") //pupleViewController를 주어준 ID값으로 정의한다.
        NextViewController?.modalPresentationStyle = .fullScreen //modal을 어떤방식으로 보여줄것인지 정한다.
        NextViewController?.modalTransitionStyle = .crossDissolve //transition 즉 화면 전환시 어떻게 보여줄지 정한다.
        self.present(NextViewController ?? UIViewController(), animated: true, completion: nil) //present해준다 단, NextViewController가 잘못된 ID값등으로 없을 수 있으니 만약 없다면 그냥 빈 UIViewController를 보여주게 한다.
    }
    
    //닫기 버튼 클릭시
    @IBAction func closeButtonTouched(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)

    }
    
//MARK: -- 라이프 사이클 체크
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewDidLoad - PupleViewController")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewWillAppear - PupleViewController")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewDidAppear - PupleViewController")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViwWillDisAppear - PupleViewController")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewDidDisAppear - PupleViewController")
    }
    

}
