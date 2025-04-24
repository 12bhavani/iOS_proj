//
//  oneViewController.swift
//  demo2
//
//  Created by Bhavani Kongari on 4/2/25.
//

import UIKit

class oneViewController: UIViewController {

    var tf1 = 0
    var tf2and3 = 0
    var tf2e = 0
    var tf3e = 0
    
    @IBOutlet weak var tf2: UITextField!
    
    @IBOutlet weak var tf3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btn2Clicked(_ sender: UIButton) {
        tf2e = Int(tf2.text!)!
        tf3e = Int(tf3.text!)!
        tf2and3 = tf2e+tf3e
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "segue2"{
            var destination = segue.destination as! twoViewController
            destination.labele = "first: \(tf1), second: \(tf2e), third: \(tf3e), res: \(tf2and3)"
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
