//
//  StudyTableViewController.swift
//  PhotoFrame
//
//  Created by seongha shin on 2022/02/17.
//

import Foundation
import UIKit

class StudyTableViewController: UITableViewController {
    let studyData: [StudyModel] = [
        StudyModel("버튼에 액션을 여러개 추가할 수 있을까?", identifier: "StudyViewController1"),
        StudyModel("버튼에 액션을 여러개 추가할 수 있을까?1", identifier: "StudyViewController1"),
        StudyModel("버튼에 액션을 여러개 추가할 수 있을까?2", identifier: "StudyViewController1")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studyData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "StudyTableViewCell", for: indexPath) as? StudyTableViewCell else { return UITableViewCell() }
        
        cell.delegate = self
        cell.setData(studyData[indexPath.row])
        return cell
    }
}

extension StudyTableViewController: StudyTableViewCellEvent {
    func onCellTapped(data: StudyModel?) {
        guard let data = data,
        let viewController = self.storyboard?.instantiateViewController(withIdentifier: data.identifier) else {
            return
        }
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}

