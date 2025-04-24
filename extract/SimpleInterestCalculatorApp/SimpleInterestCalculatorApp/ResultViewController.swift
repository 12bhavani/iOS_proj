//
//  ResultViewController.swift
//  SimpleInterestCalculatorApp
//
//  Created by Bhavani Kongari on 3/27/25.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var principalLabel: UILabel!
    
    
    @IBOutlet weak var rateLabel: UILabel!
    
    
    @IBOutlet weak var timeLabel: UILabel!
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    @IBOutlet weak var ImageLabel: UIImageView!
    
    var prin = ""
    var rate = ""
    var time = ""
    var text = ""
    var img = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        principalLabel.text! = prin
        rateLabel.text! = rate
        timeLabel.text! = time
        displayLabel.text! = text
        UIView.animate(withDuration: 0.5, animations: {
                   self.ImageLabel.alpha = 0.0 // Fade out
        })
        UIView.animate(withDuration: 1.0, delay: 0.5, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.6, animations: {
            self.ImageLabel.alpha = 1.0 // Fade in
            self.ImageLabel.image = UIImage(named: self.img)
        })
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
