//
//  InnerViewController.swift
//  PhotoFrame
//
//  Created by Kai Kim on 2022/02/17.
//

import UIKit

class YellowViewController: UIViewController {
    
    //View 가 화면에 표시된 이후에 수행합니다. 뷰를 보여줄 때 필요한 추가적인 작업을 담당합니다
    override func viewDidLoad() {
        super.viewDidLoad()
        print("YellowView calls -> viewDidLoad")
    }
    override func viewWillAppear(_ animated:Bool) {
        super.viewWillAppear(animated)
        print("YellowView calls -> viewWillAppear")
    }
    override func viewDidAppear(_ animated:Bool) {
        super.viewDidAppear(animated)
        print("YellowView calls -> viewDidAppear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("YellowView calls -> viewWillDisappear")

    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("YellowView calls -> viewDidDisappear")

    }
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        print("YellowView calls -> viewDidAppear")

    }
    //segue 없이 화면전환
//    @IBAction func showGreenView(_ sender: Any) {
//        if let greenView = self.storyboard?.instantiateViewController(withIdentifier: "GreenViewController") {
//            present(greenView, animated: true, completion: nil)
//
//        }
//    }
    
}
