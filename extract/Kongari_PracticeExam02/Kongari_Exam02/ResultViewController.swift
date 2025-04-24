//
//  ResultViewController.swift
//  Kongari_Exam02
//
//  Created by Bhavani Kongari on 4/1/25.
//

import UIKit

class ResultViewController: UIViewController {

    
    @IBOutlet weak var enteredType: UILabel!
    
    
    @IBOutlet weak var enteredDuration: UILabel!
    
    
    @IBOutlet weak var enteredCalPerMin: UILabel!
    
    
    @IBOutlet weak var result: UILabel!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    var type = ""
    var dur = ""
    var calpermin = ""
    var res = ""
    var img = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        enteredType.text! = type
        enteredDuration.text! = dur
        enteredCalPerMin.text! = calpermin
        result.text! = res
        
        imageView.alpha = 0.0
                UIView.animate(withDuration: 1.5) {
                    self.imageView.alpha = 1.0
                    self.imageView.image = UIImage(named: self.img)
                }
        // Do any additional setup after loading the view.
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
