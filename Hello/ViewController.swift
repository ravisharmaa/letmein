import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var toggle: UIButton!
    
    @IBOutlet weak var slider: UISwitch!
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Adding the button programmatically
        
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        print("tapped the button")
        
        if slider.isOn {
            toggle.setTitle("Switch was on", for: .normal)
        } else {
            toggle.setTitle("switch was off", for: .normal)
        }
    }
    
    
    @IBAction func switchTapped(_ sender: UISwitch) {
        if sender.isOn {
            toggle.setTitle("Yes switch", for: .normal)
        } else {
            toggle.setTitle("No switch", for: .normal)
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
    
   
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
}

