import UIKit

class ViewController: UIViewController {
  
  var subScript = 0
  var progressCalc = 0
  let arrayOfQuestions = [
    Question(text: "A slug's blood is green.", answer: "True"),
            Question(text: "Approximately one quarter of human bones are in the feet.", answer: "True"),
            Question(text: "The total surface area of two human lungs is approximately 70 square metres.", answer: "True"),
            Question(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", answer: "True"),
            Question(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", answer: "False"),
            Question(text: "It is illegal to pee in the Ocean in Portugal.", answer: "True"),
            Question(text: "You can lead a cow down stairs but not up stairs.", answer: "False"),
            Question(text: "Google was originally called 'Backrub'.", answer: "True"),
            Question(text: "Buzz Aldrin's mother's maiden name was 'Moon'.", answer: "True"),
            Question(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", answer: "False"),
            Question(text: "No piece of square dry paper can be folded in half more than 7 times.", answer: "False"),
            Question(text: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", answer: "True")
  ]
  
  @IBOutlet weak var questionText: UILabel!
  @IBOutlet weak var trueButton: UIButton!
  @IBOutlet weak var falseButton: UIButton!
  @IBOutlet weak var progressBar: UIProgressView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    updateUI()
  }
  
  @IBAction func answerButtonTapped(_ sender: UIButton) {
    let userlAnswer = sender.currentTitle
    let actualQuestion = arrayOfQuestions[subScript]
    let actualAnswer = actualQuestion.answer
    
    if userlAnswer == actualAnswer {
      sender.backgroundColor = .green
      print("Right!")
    } else {
      sender.backgroundColor = .red
      print("Wrong!")
    }
    
    if subScript + 1 < arrayOfQuestions.count {
      subScript += 1
    } else {
      subScript = 0
    }
    
    Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
  }
  
  @objc func updateUI() {
    questionText.text = arrayOfQuestions[subScript].text
    trueButton.backgroundColor = .clear
    falseButton.backgroundColor = .clear
    progressBar.progress = Float(subScript + 1) / Float(arrayOfQuestions.count)
  }
}
