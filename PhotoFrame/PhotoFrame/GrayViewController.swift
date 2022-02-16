import UIKit

class GrayViewController: UIViewController {

    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var exitButton: UIButton!
    
    @IBAction func exitButtonTouched(_ sender: UIButton) {
        self.dismiss(animated: true, completion: {
            print("exit button touched")
        })
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        print(#function)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setButtonPosition()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    func setButtonPosition(){
        nextButton.center.x = self.view.center.x
        nextButton.center.y = self.view.center.y
        exitButton.center.x = self.view.center.x
        exitButton.center.y = self.view.center.y*0.5
    }
}
