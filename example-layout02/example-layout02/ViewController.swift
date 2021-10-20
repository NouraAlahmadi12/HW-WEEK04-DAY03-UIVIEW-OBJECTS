
import UIKit

class ViewController: UIViewController , UITextViewDelegate {
    /*TextField*/
    @IBOutlet weak var kidName: UITextField!
    @IBOutlet weak var enterKidName: UITextField!
    
    /*Label*/
    @IBOutlet weak var statusUnlockPhone: UILabel!
    @IBOutlet weak var statusOpenXcode: UILabel!
    @IBOutlet weak var statusYoutube: UILabel!
    @IBOutlet weak var statusNetflix: UILabel!
    
    /*switch*/
    @IBOutlet weak var switchForXcode: UISwitch!
    @IBOutlet weak var switchForYoutube: UISwitch!
    @IBOutlet weak var switchForNetflix: UISwitch!
    
    /*button*/
    @IBAction func unlockPhone(_ sender: Any) {
        if(kidName.text == "" || enterKidName.text == ""){
            statusUnlockPhone.text = "Access Denied ❌"
            statusUnlockPhone.textColor = .red
        }
       else if (kidName.text == enterKidName.text){
            statusUnlockPhone.text = "unlocked ✅"
            statusUnlockPhone.textColor = .green
        }else{
            statusUnlockPhone.text = "Access Denied ❌"
            statusUnlockPhone.textColor = .red
        }
    }
    
    @IBAction func youtubeButton(_ sender: Any) {
        if(switchForYoutube.isOn == true){statusYoutube.text = "Time for some video..🎭"}
        else{statusYoutube.text = "No Access for now ☹️"}
    }
    
    
    @IBAction func XcodeButton(_ sender: Any) {
        if (switchForXcode.isOn == true){statusOpenXcode.text = "Time For Codeing..!!👨🏽‍💻"}
        else{statusOpenXcode.text = "Take break ... 🧘🏽"}
    }
    @IBAction func netflixButton(_ sender: Any) {
        if(switchForNetflix.isOn){statusNetflix.text = "Movie Time 🍿"}
        else{statusNetflix.text = "No Access for now ☹️"}
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
}
