import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
    ]
    
    var questionNumber = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionLabel.text = quiz[questionNumber].text
    }
    
    func updateUI(){
        questionLabel.text = quiz[questionNumber].text
    }
    
    @IBAction func answerButtonPressed(_ sender: Any) {

        
        let userAnswer = (sender as AnyObject).currentTitle
        let actualAnswer = quiz[questionNumber].answer
        
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

