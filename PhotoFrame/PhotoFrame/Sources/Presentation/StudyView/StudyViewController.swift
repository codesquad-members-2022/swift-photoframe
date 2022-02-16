//
//  StudyViewController.swift
//  PhotoFrame
//
//  Created by seongha shin on 2022/02/16.
//

import Foundation
import UIKit

enum SegueType {
    case show, showDetail, presentModally, presentAsPopover
}

class CustomButton: UIButton {
    var segueType: SegueType = .show
}

class StudyViewController: UIViewController {
    
    @IBOutlet weak var show: CustomButton!
    @IBOutlet weak var showDetail: CustomButton!
    @IBOutlet weak var presentModally: CustomButton!
    @IBOutlet weak var presentAsPopover: CustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        show.addTarget(self, action: #selector(onTestButtonTapped(_:)), for: .touchUpInside)
        show.segueType = .show
        showDetail.addTarget(self, action: #selector(onTestButtonTapped(_:)), for: .touchUpInside)
        showDetail.segueType = .showDetail
        presentModally.addTarget(self, action: #selector(onTestButtonTapped(_:)), for: .touchUpInside)
        presentModally.segueType = .presentModally
        presentAsPopover.addTarget(self, action: #selector(onTestButtonTapped(_:)), for: .touchUpInside)
        presentAsPopover.segueType = .presentAsPopover
    }
    
    @objc
    func onTestButtonTapped(_ sender: CustomButton) {
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextVC = mainStoryboard.instantiateViewController(withIdentifier: "NextViewController")
        
        self.seg
        
        switch sender.segueType {
        case .show:
            self.show(nextVC, sender: nil)
        case .showDetail:
            self.showDetailViewController(nextVC, sender: nil)
        case .presentModally:
            self.present(nextVC, animated: true, completion: nil)
        case .presentAsPopover:
            self.isModalInPopover = true
            self.present(nextVC, animated: true, completion: nil)
        }
    }
}

