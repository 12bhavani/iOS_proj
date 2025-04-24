//
//  ResultViewController.swift
//  BMIAppVC
//
//  Created by Bhavani Kongari on 3/25/25.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var enteredHFeetOL: UILabel!
    
    @IBOutlet weak var enteredHIncheOL: UILabel!
    
    @IBOutlet weak var enteredWLbOL: UILabel!
    
    @IBOutlet weak var displayOL: UILabel!
    
    @IBOutlet weak var imageViewOL: UIImageView!
    
    var hfeet = ""
    var hinch = ""
    var wlb = ""
    var displayR = ""
    var imageR = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        enteredHFeetOL.text! += hfeet
        enteredHIncheOL.text! += hinch
        enteredWLbOL.text! += wlb
        displayOL.text! += displayR
        imageViewOL.image = UIImage(named: imageR)
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
