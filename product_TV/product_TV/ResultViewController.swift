//
//  ResultViewController.swift
//  product_TV
//
//  Created by Bhavani Kongari on 4/8/25.
//

import UIKit

class ResultViewController: UIViewController {

    var product:Product?
    
    @IBOutlet weak var displayOL: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayOL.text! = "Product is \((product?.productName)!) with description as \"\((product?.productDesc)!)\"."
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
