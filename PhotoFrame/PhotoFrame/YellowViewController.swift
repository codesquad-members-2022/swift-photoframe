//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by 박진섭 on 2022/02/17.
//

import UIKit

class YellowViewController: UIViewController {

    //다음버튼 클릭시
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        guard let NextViewController = self.storyboard?.instantiateViewController(withIdentifier: "GreenViewController") else { return }
        self.show(NextViewController, sender: nil) 
    }
    
    //닫기 버튼 클릭시
    @IBAction func closeButtonTouched(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)

    }
    

    
//MARK: -- 라이프 사이클 체크
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewDidLoad - YellowViewController")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewWillAppear - YellowViewController")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewDidAppear - YellowViewController")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViwWillDisppaear - YellowViewController")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewDidDisappear - YellowViewController")
    }

}
