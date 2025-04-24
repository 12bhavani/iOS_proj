//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Bhavani Kongari on 2/11/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageViewOl: UIImageView!
    
    @IBOutlet weak var crnsOL: UILabel!
    
    @IBOutlet weak var titleOL: UILabel!
    
    @IBOutlet weak var semOL: UILabel!
    
    
    @IBOutlet weak var prevBtnOL: UIButton!
    
    @IBOutlet weak var nextBtnOL: UIButton!
    
    var imgnumber = 0
    
    let coursesc = [["img01", "44555", "Network Security", "Fall24"],
    ["img02", "44565", "iOS", "Spring25"],
    ["img03", "44531", "Data Streaming", "Summer25"]]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Update the course details(image, coursenumbe4r, title and semoffered)
//        imageViewOl.image = UIImage(named: coursesc[0][0])
//        crnsOL.text = coursesc[0][1]
//        titleOL.text = coursesc[0][2]
//        semOL.text = coursesc[0][3]
        updateCode(imgno: imgnumber)

        
        // previous btn is disabled
        prevBtnOL.isEnabled = false
        // next btn is enabled
        nextBtnOL.isEnabled = true
    }

    @IBAction func prevBtnClicked(_ sender: UIButton) {
        //decrement the image
        imgnumber-=1
        
//        //update the course details
//        imageViewOl.image = UIImage(named: coursesc[imgnumber][0])
//        crnsOL.text = coursesc[imgnumber][1]
//        titleOL.text = coursesc[imgnumber][2]
//        semOL.text = coursesc[imgnumber][3]
        updateCode(imgno: imgnumber)
        
        //next button should be enables
        nextBtnOL.isEnabled = true
        
        //Check if the element is at the start of the array, if yes previous btn should be disabled
        if imgnumber == 0{
            prevBtnOL.isEnabled = false
        }
    }
    
    @IBAction func nextBtnClicked(_ sender: UIButton) {
        //increment the image
        imgnumber+=1
        
//        //Update the course details
//        imageViewOl.image = UIImage(named: coursesc[imgnumber][0])
//        crnsOL.text = coursesc[imgnumber][1]
//        titleOL.text = coursesc[imgnumber][2]
//        semOL.text = coursesc[imgnumber][3]
        updateCode(imgno: imgnumber)
        
        //Previous button should be enables
        prevBtnOL.isEnabled = true
        
        //Check if the element is at the end of the array, if yes next btn should be disabled
        if coursesc.count-1 == imgnumber{
            nextBtnOL.isEnabled = false
        }
    }
    
    func updateCode(imgno: Int){
        imageViewOl.image = UIImage(named: coursesc[imgno][0])
        crnsOL.text = coursesc[imgno][1]
        titleOL.text = coursesc[imgno][2]
        semOL.text = coursesc[imgno][3]
    }
    
}

