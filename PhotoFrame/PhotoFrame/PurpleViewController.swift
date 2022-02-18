//
//  PupleViewController.swift
//  PhotoFrame
//
//  Created by 박진섭 on 2022/02/17.
//

import UIKit

class PurpleViewController: UIViewController {
    
    //다음 버튼 클릭시
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        guard let NextViewController = self.storyboard?.instantiateViewController(withIdentifier: "RedViewController") else { return }
        self.navigationController?.pushViewController(NextViewController, animated: true) //설정한 VC로 Push한다
        
    }
    
    //닫기 버튼 클릭시
    @IBAction func closeButtonTouched(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true) //view를 pop한다

    }
    
//MARK: -- 라이프 사이클 체크
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewDidLoad - PupleViewController \n")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewWillAppear - PupleViewController \n")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewDidAppear - PupleViewController \n")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViwWillDisAppear - PupleViewController \n")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewDidDisAppear - PupleViewController \n")
    }
    

}
