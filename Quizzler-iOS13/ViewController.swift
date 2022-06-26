import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        "Four + Two is equal to Six.",
        "Five - Three is greater than One",
        "Three + Eight is less than Ten",
        "Delhi is the capital of India"
    ]
    
    var questionNumber = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionLabel.text = quiz[questionNumber]
    }
    
    func updateUI(){
        questionLabel.text = quiz[questionNumber];
    }
    
    @IBAction func answerButtonPressed(_ sender: Any) {
        questionNumber += 1;
        updateUI();
    }
    
}

