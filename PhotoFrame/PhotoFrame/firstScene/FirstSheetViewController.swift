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
        
        self.view.backgroundColor = UIColor.yellow
        self.nextButton.tintColor = UIColor.purple
        
        print("ViewDidLoad - FSVC")
        print(#file, #line, #function, #column)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("ViewWillAppear - FSVC")
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("ViewDidAppear - FSVC")
        print(#file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("ViewWillDisappear - FSVC")
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("ViewDidDisappear - FSVC")
        print(#file, #line, #function, #column)
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
    
    @IBAction func closeButtonTouched(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func navigationButton(_ sender: UIBarButtonItem) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondSheetViewController") else { return }
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}
