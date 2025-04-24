//
//  ViewController.swift
//  Kongari_WordGuess
//
//  Created by Bhavani Kongari on 3/2/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wordsGuessedLabel: UILabel!
    
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    
    @IBOutlet weak var totalWordsLabel: UILabel!
    
    @IBOutlet weak var userGuessLabel: UILabel!
    
    @IBOutlet weak var guessLetterField: UITextField!
    
    @IBOutlet weak var guessBtn: UIButton!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBOutlet weak var displayImage: UIImageView!
    
    @IBOutlet weak var playAgainBtn: UIButton!
    
    @IBOutlet weak var guessCountLabel: UILabel!
    
    @IBOutlet weak var hintLabel: UILabel!
   
    var words = [["KONGARI", "BHAVANI'S SURNAME"],
    ["HEN", "CHICKEN"],
    ["BAG", "HELPS TO CARRY THINGS"],
    ["WATER", "H2O"],
    ["FAN", "MACHINE PRODUCES WIND"]]
    var imgs = ["kongari", "hen", "bag", "water", "fan"]
    var count=0
    var maxNumOfWrongGuesses=0
    var word = ""
    var lettersGuessed = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        count = 0
        wordsGuessedLabel.text! += String(count)
        wordsRemainingLabel.text! += String(words.count)
        totalWordsLabel.text! += String(words.count-count)
        
        word = words[count][0]
        userGuessLabel.text! = ""
        for i in word{
            userGuessLabel.text! += "_ "
        }
        hintLabel.text! = "HINT: "+words[count][1]
        guessBtn.isEnabled = false;
        word = words[count][0]
        
    }

    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        var input = guessLetterField.text!
        
        lettersGuessed = lettersGuessed + input
        var revealedWord = ""
        
        for l in words[count][0]{
            if lettersGuessed.contains(l){
                revealedWord += "\(l)"
            }
            else{
                revealedWord += "_ "
            }
        }
        
        maxNumOfWrongGuesses+=1
        if(maxNumOfWrongGuesses<10){
            guessCountLabel.text! = "You have made "+String(maxNumOfWrongGuesses)+" guesses"
        }
        else{
            statusLabel.text = ""
            playAgainBtn.isHidden = false
            guessBtn.isEnabled = false
            guessCountLabel.text! = "You have used all the available guesses, Please play again"
        }
        
        
        if words[count][0].contains(String(input)) && !userGuessLabel.text!.contains(String(input)) {
            statusLabel.text! = "Good guess! Keep going."
        }
        else {
            statusLabel.text! = "Wrong guess. Try again."
        }
        
       
        userGuessLabel.text = revealedWord
        guessLetterField.text = ""
        if userGuessLabel.text!.contains("_ ") == false{
            statusLabel.text = ""
            playAgainBtn.isHidden = false
            guessBtn.isEnabled = false
            if(maxNumOfWrongGuesses==10){
                guessCountLabel.text! = "Wow!, You have made \(maxNumOfWrongGuesses) guesses to guess the word"
            }
            if(count<words.count-1){
                statusLabel.text! = "You've guessed it correctly! '\(words[count][0])'🎉"
            }
            else{
                statusLabel.text = "Congratulations, You are done, Please start over again"
            }
            displayImage.isHidden = false
            displayImage.image = UIImage(named: imgs[count])
        }
        guessBtn.isEnabled = false
    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        
        playAgainBtn.isHidden = true
        lettersGuessed = ""
        displayImage.isHidden = true
        if(userGuessLabel.text!.contains("_ ") == false){
            count += 1
        }
        wordsGuessedLabel.text! = "Total number of words guessed successfully: "+String(count)
        wordsRemainingLabel.text! = "Total number of words remaining in game: "+String(words.count-count)
        totalWordsLabel.text! = "Total number of words in game: "+String(words.count)
        
        if count == words.count{
            viewDidLoad()
        }
        else{
            word = words[count][0]
            hintLabel.text = "HINT: " + words[count][1]
            statusLabel.text! = "..."
            guessCountLabel.text! = "You have Made Zero Guesses"
            maxNumOfWrongGuesses = 0
            guessBtn.isEnabled = false
            userGuessLabel.text! = ""
            for i in word{
                userGuessLabel.text! += "_ "
            }
        }
    }
    
    
    @IBAction func textFieldEditingChanged(_ sender: UITextField) {
        var textEnterd = guessLetterField.text!;
        textEnterd = String(textEnterd.last ?? " ").trimmingCharacters(in: .whitespaces)
        guessLetterField.text = textEnterd
        if textEnterd.isEmpty{
            guessBtn.isEnabled = false
        }
        else{
            guessBtn.isEnabled = true
        }
    }
    
}

