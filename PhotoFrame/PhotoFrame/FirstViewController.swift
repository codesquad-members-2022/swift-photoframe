//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 송태환 on 2022/02/14.
//

import UIKit

class FirstViewController: UIViewController {
    // MARK: - Properties
    @IBOutlet weak var photoLabel: UILabel!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoLabel.text = "Welcome!"
        self.photoLabel.font = UIFont(name: "Chalkduster", size: 42)
        self.photoLabel.textColor = self.photoLabel.textColor.withAlphaComponent(0.8)
    }

    // MARK: - Handlers
    @IBAction func didEndOnExit(_ sender: Any) {
        print("Did End On Exit")
    }
    
    @IBAction func editingChanged(_ sender: Any) {
        print("Editing Change - 키보드 입력 시 트리거")
    }
    
    @IBAction func editingDidBegin(_ sender: Any) {
        print("Editing Did Begin - Text Field 가 포커스 될 때 트리커")
    }
    
    @IBAction func editingDidEnd(_ sender: Any) {
        print("Editing Did End - Text Field 가 blur 될 때 트리커")
    }

    @IBAction func primaryActionTriggered(_ sender: Any) {
        print("Primary Action Triggered")
    }
    
    @IBAction func touchCanceled(_ sender: Any) {
        print("Touch Cancel")
    }
    
    @IBAction func touchedDownRepeat(_ sender: Any) {
        print("Touch Down Repeat")
    }
    
    @IBAction func TouchedDown(_ sender: Any) {
        print("Touch Down - 탭을 누를 때 트리거")
    }
    
    @IBAction func dragExited(_ sender: Any) {
        print("Drag Exit")
    }
    
    @IBAction func dragEntered(_ sender: Any) {
        print("Drag Enter")
    }
    
    @IBAction func valueChanged(_ sender: Any) {
        print("Value Changed")
    }
    
    @IBAction func draggedInside(_ sender: Any) {
        print("Touch Drag Inside - 탭을 누른 상태에서 드래그할 때 트리거")
    }
    
    @IBAction func draggedOutside(_ sender: Any) {
        print("Touch Drag Outside - 드래그 중에 UI 요소 영역밖으로 나갈 때 트리거")
    }
    
    @IBAction func touchedUpInside(_ sender: Any) {
        print("Touch Up Inside - UI 요소 영역 안에서 탭을 땔 때 트리거")
    }
    
    @IBAction func touchedUpOutside(_ sender: Any) {
        print("Touch Up Outside - UI 요소 영역 밖에서 탭을 땔 때 트리거")
    }
    
}
