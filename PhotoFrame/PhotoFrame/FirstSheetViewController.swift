//
//  FirstSheetViewController.swift
//  PhotoFrame
//
//  Created by juntaek.oh on 2022/02/15.
//

import UIKit

class FirstSheetViewController: UIViewController {
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.blue
        self.nextButton.tintColor = UIColor.purple
        self.nextButton.backgroundColor = UIColor.yellow
    }
    
    // 뷰 컨트롤러 전환 전에 데이터 처리 가능한 메서드
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // 데이터 전달 뷰 컨트롤러 존재하는 지 확인
        guard let secondSheetViewController = segue.destination as? SecondSheetViewController else { return }
        
        // 대상 뷰 컨트롤러 존재할 경우 데이터 전달
        secondSheetViewController.defaultText = "슈슈슈슈슉"
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        // sender를 통해서도 viewController의 데이터 전달이 가능
        performSegue(withIdentifier: "secondScreen", sender: nil)
    }
}
