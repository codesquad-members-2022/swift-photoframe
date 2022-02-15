//
//  tintViewController.swift
//  PhotoFrame
//
//  Created by dale on 2022/02/15.
//

import UIKit

class TintViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print(#file, #line, #function, #column)
    }
    override  func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print(#file, #line, #function, #column)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print(#file, #line, #function, #column)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print(#file, #line, #function, #column)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
