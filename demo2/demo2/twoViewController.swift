//
//  twoViewController.swift
//  demo2
//
//  Created by Bhavani Kongari on 4/2/25.
//

import UIKit

class twoViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var imge = "coldClimate"
    var labele = ""
    
    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text! = labele
        img.image = UIImage(named: imge)
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
