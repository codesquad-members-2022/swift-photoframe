//
//  StudyTableViewCell.swift
//  PhotoFrame
//
//  Created by seongha shin on 2022/02/17.
//

import Foundation
import UIKit

protocol StudyTableViewCellEvent {
    func onCellTapped( data: StudyModel?)
}

class StudyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var title: UILabel!
    
    private var studyData: StudyModel? = nil
    
    var delegate: StudyTableViewCellEvent?
    
    func setData(_ data: StudyModel) {
        self.studyData = data
        title.text = data.title
    }
    
    @IBAction func onCellTapped(_ sender: Any) {
        delegate?.onCellTapped(data: self.studyData)
    }
}
