//
//  ResultViewController.swift
//  Kongari_Exam02
//
//  Created by Bhavani Kongari on 4/3/25.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var typeLabel: UILabel!
    
    @IBOutlet weak var amountLabel: UILabel!
    
    @IBOutlet weak var rateLabel: UILabel!
    
    @IBOutlet weak var savingsLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var goalType = ""
    var targetAmnt = ""
    var interestRate = ""
    var result = ""
    var image = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        typeLabel.text! = goalType
        amountLabel.text! = targetAmnt
        rateLabel.text! = interestRate
        savingsLabel.text! = result
        
        imageView.alpha = 0.0
        UIView.animate(withDuration: 1.5) {
            self.imageView.alpha = 1.0
            self.imageView.image = UIImage(named: self.image)
        }
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
