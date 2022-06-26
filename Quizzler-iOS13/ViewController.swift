import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        ["Four + Two is equal to Six.", "True"],
        ["Five - Three is greater than One", "True"],
        ["Three + Eight is less than Ten", "False"],
        ["Delhi is the capital of India", "True"]
    ]
    
    var questionNumber = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionLabel.text = quiz[questionNumber][0]
    }
    
    func updateUI(){
        questionLabel.text = quiz[questionNumber][0];
    }
    
    @IBAction func answerButtonPressed(_ sender: Any) {

        
        let userAnswer = (sender as AnyObject).currentTitle
        let actualAnswer = quiz[questionNumber][1];
        
        if(userAnswer == actualAnswer){
            print("Right")
        }else {
            print("Wrong")
        }
        
        if(quiz.count == questionNumber + 1){
            questionNumber = 0;
        }else {
            questionNumber += 1;
        }
        updateUI();
    }
    
}

