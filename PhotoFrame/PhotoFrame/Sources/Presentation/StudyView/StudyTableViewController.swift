//
//  StudyTableViewController.swift
//  PhotoFrame
//
//  Created by seongha shin on 2022/02/17.
//

import Foundation
import UIKit

class StudyTableViewController: UITableViewController {
    let studyDatas: [StudyModel] = [
        StudyModel("네비게이션 컨트롤러 테스트", identifier: "FirstViewController"),
        StudyModel("버튼에 액션을 여러개 추가할 수 있을까?", identifier: "StudyViewController1"),
        StudyModel("여러 버튼을 동시에 하나의 액션에 연결할 수 있을까?", identifier: "StudyViewController2"),
        StudyModel("화면 전환이 이루어지는 사이에 뷰컨트롤러 라이프사이클이 어떻게 변화하는지 학습한다.", identifier: "StudyViewController3")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return studyDatas.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "StudyTableViewCell", for: indexPath) as? StudyTableViewCell else { return UITableViewCell() }
        
        cell.delegate = self
        cell.setData(studyDatas[indexPath.row])
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

