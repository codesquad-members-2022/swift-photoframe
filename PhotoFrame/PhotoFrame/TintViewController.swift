//
//  tintViewController.swift
//  PhotoFrame
//
//  Created by dale on 2022/02/15.
//

import UIKit

class TintViewController: CallBackMethod {
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
