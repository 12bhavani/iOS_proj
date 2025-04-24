//
//  twoViewController.swift
//  demo
//
//  Created by Bhavani Kongari on 4/1/25.
//

import UIKit

class twoViewController: UIViewController {

    var res3 = 0
    var imgw = ""
    
    @IBOutlet weak var label2: UILabel!
    
    
    @IBOutlet weak var img: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label2.text! = String(res3)
        img.image = UIImage(named: imgw)
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
