//
//  ColorView1.swift
//  PhotoFrame
//
//  Created by seongha shin on 2022/02/14.
//

import UIKit

class GrayViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #function, "뷰가 로드 되었습니다!")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#file, #function, "뷰가 보여질 것입니다!")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#file, #function, "뷰가 보여졌습니다!")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#file, #function, "뷰가 닫힐것입니다!")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#file, #function, "뷰가 닫혔습니다!")
    }
}
