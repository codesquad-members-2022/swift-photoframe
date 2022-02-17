import UIKit

class GrayViewController: UIViewController {

    @IBOutlet weak var exitButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    @IBAction func exitButtonTouched(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        print(#function)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setExitButton()
        setNextButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print(#file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print(#file, #line, #function, #column)
    }
    
    func setExitButton(){
        exitButton.center.x = self.view.center.x*0.7
        exitButton.center.y = self.view.center.y
        exitButton.setTitle("이전", for: .normal)
        exitButton.titleLabel!.font = UIFont.systemFont(ofSize: 40)
        exitButton.setTitleColor(.red, for: .normal)
    }
    
    func setNextButton(){
        nextButton.center.x = self.view.center.x*1.3
        nextButton.center.y = self.view.center.y
        nextButton.setTitle("다음", for: .normal)
        nextButton.titleLabel!.font = UIFont.systemFont(ofSize: 40)
        nextButton.setTitleColor(.blue, for: .normal)
    }
}
