//
//  RedViewController.swift
//  PhotoFrame
//
//  Created by 박진섭 on 2022/02/17.
//

import UIKit

class RedViewController: UIViewController {

    //다음버튼 클릭시
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        guard let NextViewController = self.storyboard?.instantiateViewController(withIdentifier: "YellowViewController") else { return }
        self.navigationController?.pushViewController(NextViewController, animated: true)
    }
    //닫기 버튼 클릭시
    @IBAction func closeButtonTouched(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)

    }
    
    
//MARK: -- 라이프 사이클 체크
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewDidLoad - RedViewController \n")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewWillAppear - RedViewController \n")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewDidAppear - RedViewController \n")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViwWillDisppaear - RedViewController \n")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewDidDisappear - RedViewController \n")
    }
    
    
}
