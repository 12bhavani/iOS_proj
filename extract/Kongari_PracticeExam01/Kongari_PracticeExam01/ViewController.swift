//
//  ViewController.swift
//  Kongari_PracticeExam01
//
//  Created by Bhavani Kongari on 2/20/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var heightInFeetOutlet: UITextField!
    
    @IBOutlet weak var heightInInchesOL: UITextField!
    
    @IBOutlet weak var weightOL: UITextField!
    
    @IBOutlet weak var imageViewOl: UIImageView!
    
    @IBOutlet weak var messageOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateBtnClicked(_ sender: UIButton) {
        let feets = heightInFeetOutlet.text!
        let inches = heightInInchesOL.text!
        let feetsInt = Double(feets)!
        let inchesInt = Double(inches)!
        let height = (feetsInt*12)+inchesInt
        let weight = weightOL.text!
        let weightInt = Double(weight)!
        let temp = (weightInt/(height*height))
        let results:Double = 703 * temp
        
        if results<=18.5{
            messageOL.text = "Your Body Mass Index is \(results).This is considered Underweight🪫. Healthtip: Eat more protein and healty fats."
            imageViewOl.image = UIImage(named: "underWeight")
        }
        else if results>=18.6 && results<=24.9{
            messageOL.text = "Your Body Mass Index is \(results).This is considered Normal👍. Healthtip: Excellent! Maintain a balanced lifestyle."
            imageViewOl.image = UIImage(named: "normal")
        }
        else if results>=25 && results<=29.9{
            messageOL.text = "Your Body Mass Index is \(results).This is considered Overweight. Healthtip: Lose weight by maintaining a balanced diet less and increasing physical activity."
            imageViewOl.image = UIImage(named: "overWeight")
        }
        else{
            messageOL.text = "Your Body Mass index is \(results).This is considered Obese. Healthtip: Consult a doctor for personalized advice."
            imageViewOl.image = UIImage(named: "obese")
        }
    }
    
}

