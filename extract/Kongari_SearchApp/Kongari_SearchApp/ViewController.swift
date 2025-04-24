//
//  ViewController.swift
//  Kongari_SearchApp
//
//  Created by Bhavani Kongari on 3/23/25.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var count1 = 0
    var count2 = 0
    
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    
    @IBOutlet weak var prevOL: UIButton!
    
    
    @IBOutlet weak var nextOL: UIButton!
    
    
    @IBOutlet weak var searchOL: UIButton!
    
    var imagesArray = [
        ["FamousLandmark1", "FamousLandmark2", "FamousLandmark3"],
        ["T&A_1", "T&A_2", "T&A_3"],
        ["WildWonders1", "WildWonders2", "WildWonders3"],
        ["FlavorsOfTheWorld1", "FlavorsOfTheWorld2", "FlavorsOfTheWorld3"],
        ["FestivalsCulture1", "FestivalsCulture2", "FestivalsCulture3"]
    ]
    
    var Famouslandmarks_keywords = ["famous", "architecture", "history", "country", "popular"]
    var travelAdventure_keywords = ["tours", "travel", "holidays", "tourist", "adventure"]
    var WildWonders_keywords = ["wildlife", "nature", "habitat", "animals", "forests"]
    var FlavorsOfTheWorld_keywords = ["cuisine", "delicious", "dishes", "food", "taste"]
    var FestivalsCulture_keywords = ["traditions", "celebrations", "festive", "colorful", "events"]
    
    var topics_description = [
        ["Kronborg Castle, also known as Elsinore, is the setting for William Shakespeare's play Hamlet. The castle is a UNESCO World Heritage Site and is famous for its Renaissance architecture.",
         "The Sri Ranganathaswamy Temple is one of the largest functioning Hindu temples in the world, dedicated to Lord Ranganatha, which covers 156 acres and contains 21 large Gopurams.",
         "The Eiffel Tower was the tallest man-made structure in the world until the completion of the Chrysler Building in New York in 1930. It's now one of the most iconic symbols of France."],
        ["Paragliding was first developed in the 1950s and evolved from the parachuting techniques used by the military. It allows a pilot to glide through the air using a lightweight, non-motorized wing.",
         "The first successful flight in a hot air balloon took place in 1783, made by the Montgolfier brothers in France. It was a major milestone in aviation history, as hot air ballooning was the first form of human flight.",
         "River rafting, also known as white-water rafting, involves navigating through rough, fast-moving rivers in an inflatable raft. The activity originated in the 19th century but gained popularity as an extreme sport in the 1970s."],
        ["Elephants use a wide range of vocalizations, body language, and even seismic vibrations to communicate with each other, making them one of the most intelligent and socially sophisticated animal species.",
         "Cheetah hunting is incredibly efficient due to their speed and acceleration. They rely on stealth and their ability to accelerate quickly to get within close range of prey. ",
         "Lion cubs are born with spots on their fur, which gradually disappear as they grow older. This helps them blend into the environment and stay hidden from predators in the early stages of their life."],
        ["Pani puri is known for its combination of flavors and textures—crispy puris filled with a burst of tangy, spicy water. It's typically eaten in one bite, making it a fun and refreshing snack enjoyed by people of all ages.",
         "The specialty of street noodles lies in their quick cooking process and vibrant, flavorful stir-fry, often served with a spicy sauce and crispy vegetables, making them a perfect comfort food and snack for busy city life.",
         "Pizza is loved worldwide for its incredible versatility, with endless topping combinations, ranging from the traditional Margherita to gourmet variations with unusual ingredients like figs or truffles. "],
        ["Holi known as the Festival of Colors, Holi involves people throwing vibrant colored powders at each other, dancing, singing, and celebrating with friends and family. ",
         "Diwali is celebrated with the lighting of oil lamps or diyas, bursting fireworks, decorating homes with rangoli, and exchanging gifts. It is a time for family reunions, prayers, and indulging in sweets.",
         "Halloween is characterized by spooky costumes, trick-or-treating, and haunted houses. Over time, it evolved into a commercial celebration, and is huge cultural event of parties, and themed decorations."]
    ]
    
    
    var word:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        start()
    }
    
    @IBAction func searchBtnClicked(_ sender: UIButton) {
        count2 = 0
        start()
        
        AudioServicesPlaySystemSound(1113)
        word = searchTextField.text!
        if(Famouslandmarks_keywords.contains(word.lowercased())){
            count1 = 0;
            updateData()
        }
        else if(travelAdventure_keywords.contains(word.lowercased())){
            count1 = 1;
            updateData()
        }
        else if(WildWonders_keywords.contains(word.lowercased())){
            count1 = 2;
            updateData()
        }
        else if(FlavorsOfTheWorld_keywords.contains(word.lowercased())){
            count1 = 3;
            updateData()
        }
        else if(FestivalsCulture_keywords.contains(word.lowercased())){
            count1 = 4;
            updateData()
        }
        else{
            resultImage.image = UIImage(named: "error")
            topicInfoText.text! = "No result found for \(word.lowercased())"
        }
    }
    
    @IBAction func ShowNextImageBtn(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1105)
        count2+=1
        updateData()
        if(count2 == 2){
            nextOL.isEnabled = false
        }
        prevOL.isEnabled = true
    }
    
    @IBAction func ShowPrevImageBtn(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1105)
        count2-=1
        updateData()
        if(count2 == 0){
            prevOL.isEnabled = false
        }
        nextOL.isEnabled = true
    }
    
    @IBAction func ResetBtn(_ sender: UIButton) {
        AudioServicesPlaySystemSound(1111)
        start()
        searchTextField.text = ""
    }
    
    @IBAction func textFeild(_ sender: UITextField) {
        word = searchTextField.text!
        if word.isEmpty{
            searchOL.isEnabled = false
        }
        else{
            searchOL.isEnabled = true
        }
    }
    func updateData(){
        resultImage.image = UIImage(named: imagesArray[count1][count2])
        nextOL.isEnabled = true
        topicInfoText.text! = topics_description[count1][count2]
    }
    
    func start(){
        searchOL.isEnabled = false
        prevOL.isEnabled = false
        nextOL.isEnabled = false
        topicInfoText.text! = "Hello, Bhavani!!"
        resultImage.image = UIImage(named: "welcome")
    }
    
}

