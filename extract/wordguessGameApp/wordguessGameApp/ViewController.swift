//
//  ViewController.swift
//  wordguessGameApp
//
//  Created by Bhavani Kongari on 2/13/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var displayOL: UILabel!
    
    @IBOutlet weak var hintOL: UILabel!
    
    @IBOutlet weak var inputOL: UITextField!
    
    @IBOutlet weak var checkBtnOL: UIButton!
    
    @IBOutlet weak var congratsOL: UILabel!
    
    @IBOutlet weak var playAgainOL: UIButton!
    
    var words = [["SWIFT", "PROGRAMMING LANGUAGE"],
    ["CAT", "PET ANIMAL"],
    ["BIKE", "2 WHEELER"]]
    var count=0
    var lettersGuessed = ""
    var word = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        word = words[0][0]
        for letter in word{
            displayOL.text! += "_ "
        }
        hintOL.text! = words[0][1]
        
        checkBtnOL.isEnabled = false;
        word = words[count][0]
                        
        displayOL.text = ""
                        
        for letter in word{
            displayOL.text! += "_ "
        }
        hintOL.text = "Hint: " + words[count][1]
        congratsOL.text = ""
                    
    }
    
    @IBAction func letterEntered(_ sender: UITextField) {
        var textEnterd = inputOL.text!;
        textEnterd = String(textEnterd.last ?? " ").trimmingCharacters(in: .whitespaces)
        inputOL.text = textEnterd
        if textEnterd.isEmpty{
            checkBtnOL.isEnabled = false
        }
        else{
            checkBtnOL.isEnabled = true
        }
              
    }
    
    @IBAction func playAgainBtnClicked(_ sender: UIButton) {
        playAgainOL.isHidden = true
        lettersGuessed = ""
        count += 1
        if count == words.count{
            congratsOL.text = "Congruations! You are done with the game!"
            displayOL.text = ""
            hintOL.text = ""
        }
        else{
            word = words[count][0]
            hintOL.text = "Hint: " + words[count][1]
            checkBtnOL.isEnabled = true
            displayOL.text = ""
            for letter in word{
                displayOL.text! += "_ "
            }
        }
    }
    
    @IBAction func checkBtnClicked(_ sender: UIButton) {
        var input = inputOL.text!
        
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
        displayOL.text = revealedWord
        inputOL.text = ""
        if displayOL.text!.contains("_ ") == false{
            playAgainOL.isHidden = false
            checkBtnOL.isEnabled = false
        }
        checkBtnOL.isEnabled = false
    }
    
    
    
}

