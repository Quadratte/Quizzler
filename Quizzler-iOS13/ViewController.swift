import UIKit

class ViewController: UIViewController {
  
  var subScript = 0
  let arrayOfQuestions = ["huy", "pizda", "dgigurda"]
  
  @IBOutlet weak var questionText: UILabel!
  @IBOutlet weak var trueButton: UIButton!
  @IBOutlet weak var falseButton: UIButton!
  @IBOutlet weak var progressBar: UIImageView!
  
  
  override func viewDidLoad() {
        super.viewDidLoad()
    questionText.text = "Why are you gae?"
    }

  @IBAction func answerButtonTapped(_ sender: Any) {
    if arrayOfQuestions.count-2 >= subScript {
      subScript += 1
      print(subScript)
      questionText.text = arrayOfQuestions[subScript]
    } else {
      subScript = 0
      questionText.text = arrayOfQuestions[subScript]
    }

  }
  
}


