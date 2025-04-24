//
//  oneViewController.swift
//  demo
//
//  Created by Bhavani Kongari on 4/1/25.
//

import UIKit

class oneViewController: UIViewController {
    
    var img = "coldClimate"
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBOutlet weak var tf3: UITextField!
    var res = 0
    var res2 = 0
    var res3 = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text! = String(res)
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btn2(_ sender: UIButton) {
        res2 = Int(tf3.text!)!
        res3=res2*res
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var transition = segue.identifier
        if transition == "segue2"{
            var destination = segue.destination as! twoViewController
            destination.res3 = res3
            destination.imgw = img
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
}
