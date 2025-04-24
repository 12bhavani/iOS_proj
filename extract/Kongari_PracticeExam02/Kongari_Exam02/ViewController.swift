//
//  ViewController.swift
//  Kongari_Exam02
//
//  Created by Bhavani Kongari on 4/1/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var activityOL: UITextField!
    
    @IBOutlet weak var durationOL: UITextField!
    
    @IBOutlet weak var caloriesPerMinOL: UITextField!
    
    @IBOutlet weak var CalcBtn: UIButton!
    
    var type = ""
    var duration = 0
    var calPerMin = 0
    var totalCaloriesBurned = 0.00
    var image = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        CalcBtn.isEnabled = false
    }

    @IBAction func CalcBtnClicked(_ sender: UIButton) {
        type = activityOL.text!
        duration = Int(durationOL.text!)!
        calPerMin = Int(caloriesPerMinOL.text!)!
        totalCaloriesBurned = Double(duration*calPerMin)
        
        if(type == "swimming"){
            image = "swimming"
        }
        else if(type == "cycling"){
            image = "cycling"
        }
        else if(type == "running"){
            image = "running"
        }
        else{
            image = "default"
        }
    }
    
    @IBAction func resetBtnClicked(_ sender: UIButton) {
        activityOL.text! = ""
        durationOL.text! = ""
        caloriesPerMinOL.text! = ""
        CalcBtn.isEnabled = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            // Reset all input fields
        activityOL.text! = ""
        durationOL.text! = ""
        caloriesPerMinOL.text! = ""
        CalcBtn.isEnabled = false
        }

    @IBAction func textfeild(_ sender: UITextField) {
        if !activityOL.text!.isEmpty && !durationOL.text!.isEmpty && !caloriesPerMinOL.text!.isEmpty{
            CalcBtn.isEnabled = true
        }
        else{
            CalcBtn.isEnabled = false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "ResultSegue"{
            var destination = segue.destination as! ResultViewController
            destination.type = "Activity Type: \(type)"
            destination.dur = "Duration: \(duration) minutes"
            destination.calpermin = "Calories per Minute: \(Double(calPerMin))"
            destination.res = "Total Calories Burned: \(totalCaloriesBurned)"
            destination.img = image
        }
    }
    
}

