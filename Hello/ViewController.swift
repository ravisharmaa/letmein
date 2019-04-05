import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.setTitle("This is changed", for: .normal)
    }
    
    
    @IBAction func switchTapped(_ sender: UISwitch) {
        if sender.isOn {
            print("I am on")
        
        } else {
            print("dude offed me")
        }
    }
    
    
    @IBAction func slidingAction(_ sender: UISlider) {
        
        if sender.value < 5 {
            print("\(sender.value)")
        }
    }
    
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    
    @IBAction func didChangeEditing(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    
}

