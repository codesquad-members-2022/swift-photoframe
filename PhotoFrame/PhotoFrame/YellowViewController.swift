//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by 송태환 on 2022/02/14.
//

import UIKit

class YellowViewController: UIViewController {
    
    // MARK: - View LifeCycle
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\nSecond View", #function)
        self.configureButton()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Second View", #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Second View", #function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Second View", #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Second View", #function)
    }
    
    // MARK: - Methods
    func configureButton() {
        self.nextButton.setTitle("Click To Next", for: .normal)
        self.nextButton.addTarget(self, action: #selector(self.buttonTouched), for: .touchUpInside)
        self.nextButton.addTarget(self, action: #selector(self.buttonTouchedDown), for: .touchDown)
    }
    
    func navigateToNextUsingNavigationController() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "PurpleViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func showViewControllerModally() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "PurpleViewController")
        vc.modalTransitionStyle = .coverVertical
        vc.modalPresentationStyle = .pageSheet
        self.present(vc, animated: true, completion: nil)
    }
    
    func navigateToNextUsingExistSegue() {
        self.performSegue(withIdentifier: "goToPurpleViewController", sender: nil)
    }
    
    // MARK: - Selectors
    @objc func buttonTouched(sender: UIButton, forEvent event: UIEvent) {
        sender.setTitle("Moving...", for: .normal)
        //        self.showViewControllerModally()
        //        self.navigateToNextUsingExistSegue()
        self.navigateToNextUsingNavigationController()
    }
    
    @objc func buttonTouchedDown(sender: UIButton, forEvent event: UIEvent) {
        sender.setTitle("Start!", for: .normal)
    }
    
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
