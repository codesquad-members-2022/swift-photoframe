//
//  GreyViewController.swift
//  PhotoFrame
//
//  Created by dale on 2022/02/15.
//

import UIKit

class GreyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func nextButtonTouched(_ sender: Any) {
        let newVC = self.storyboard?.instantiateViewController(identifier: "tintViewController")
        newVC?.modalTransitionStyle = .coverVertical
        newVC?.modalPresentationStyle = .automatic
        self.present(newVC!,animated: true)
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
