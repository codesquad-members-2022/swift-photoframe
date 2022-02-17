//
//  StudyViewController4.swift
//  PhotoFrame
//
//  Created by seongha shin on 2022/02/17.
//

import Foundation
import UIKit

class StudyViewController4: UIViewController {
    
    @IBOutlet var testLabels: [UILabel]!
    @IBOutlet weak var textAlignmentButton: UIButton!
    @IBOutlet weak var baselineAdjustmentButton: UIButton!
    @IBOutlet weak var numberOfLinesButton: UIButton!
    @IBOutlet weak var lineBreakModeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textAlignmentButton.addAction(UIAction(handler: { _ in self.textAlignment()}), for: .touchUpInside)
        baselineAdjustmentButton.addAction(UIAction(handler: { _ in self.baselineAdjustment()}), for: .touchUpInside)
        numberOfLinesButton.addAction(UIAction(handler: { _ in self.numberOfLines()}), for: .touchUpInside)
        lineBreakModeButton.addAction(UIAction(handler: { _ in self.lineBreakMode()}), for: .touchUpInside)
    }
    
    func resetTestLabel() {
        testLabels.forEach {
            $0.isHidden = true
            $0.textAlignment = .natural
            $0.baselineAdjustment = .alignBaselines
            $0.numberOfLines = 3
            $0.lineBreakMode = .byTruncatingTail
        }
    }
    
    func textAlignment() {
        resetTestLabel()
        let testCaseCount = 5
        (0..<testCaseCount).forEach{
            testLabels[$0].isHidden = false
            testLabels[$0].text = "정렬을 확인합니다"
        }
        testLabels[0].textAlignment = .left
        testLabels[1].textAlignment = .right
        testLabels[2].textAlignment = .center
        testLabels[3].textAlignment = .justified
        testLabels[4].textAlignment = .natural
    }
    
    func baselineAdjustment() {
        resetTestLabel()
        let testCaseCount = 3
        (0..<testCaseCount).forEach{
            testLabels[$0].isHidden = false
        }
        testLabels[0].baselineAdjustment = .alignBaselines
        testLabels[1].baselineAdjustment = .alignCenters
        testLabels[2].baselineAdjustment = .none
    }
    
    func numberOfLines() {
        resetTestLabel()
        let testCaseCount = 5
        (0..<testCaseCount).forEach{
            testLabels[$0].isHidden = false
            testLabels[$0].text = "\($0)입력 시 처리를 확인합니다. \($0)입력 시 처리를 확인합니다. \($0)입력 시 처리를 확인합니다. \($0)입력 시 처리를 확인합니다. \($0)입력 시 처리를 확인합니다. \($0)입력 시 처리를 확인합니다. \($0)입력 시 처리를 확인합니다."
        }
        testLabels[0].numberOfLines = 0
        testLabels[1].numberOfLines = 1
        testLabels[2].numberOfLines = 2
        testLabels[3].numberOfLines = 3
        testLabels[4].numberOfLines = 4
    }
    
    func lineBreakMode() {
        resetTestLabel()
        let testCaseCount = 6
        (0..<testCaseCount).forEach{
            testLabels[$0].textAlignment = .left
            testLabels[$0].isHidden = false
            testLabels[$0].text = "글자 짤림을 확인합니다.글자 짤림을 확인합니다.글자 짤림을 확인합니다.글자 짤림을 확인합니다.글자 짤림을 확인합니다.글자 짤림을 확인합니다.글자 짤림을 확인합니다.글자 짤림을 확인합니다.글자 짤림을 확인합니다.글자 짤림을 확인합니다.글자 짤림을 확인합니다.글자 짤림을 확인합니다.글자 짤림을 확인합니다.글자 짤림을 확인합니다.글자 짤림을 확인합니다.글자 짤림을 확인합니다.글자 짤림을 확인합니다.글자 짤림을 확인합니다."
        }
        testLabels[0].lineBreakMode = .byWordWrapping
        testLabels[0].numberOfLines = 3
        testLabels[1].lineBreakMode = .byCharWrapping
        testLabels[1].numberOfLines = 3
        testLabels[2].lineBreakMode = .byClipping
        testLabels[2].numberOfLines = 1
        testLabels[3].lineBreakMode = .byTruncatingTail
        testLabels[3].numberOfLines = 1
        testLabels[4].lineBreakMode = .byTruncatingHead
        testLabels[4].numberOfLines = 2
        testLabels[5].lineBreakMode = .byTruncatingMiddle
        testLabels[5].numberOfLines = 2
    }
}


