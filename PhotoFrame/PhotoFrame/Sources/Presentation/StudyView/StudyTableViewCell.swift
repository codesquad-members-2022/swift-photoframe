//
//  StudyTableViewCell.swift
//  PhotoFrame
//
//  Created by seongha shin on 2022/02/17.
//

import Foundation
import UIKit

class StudyTableViewCell: UITableViewCell {
    public private(set) var index = 0
    
    func setData(_ index: Int) {
        self.index = index
    }
}
