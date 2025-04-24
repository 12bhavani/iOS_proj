//
//  ResultViewController.swift
//  DiscountApp_MVC
//
//  Created by Bhavani Kongari on 3/20/25.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var diaplayAmntOL: UILabel!
    
    @IBOutlet weak var displayDiscRateOL: UILabel!
    
    @IBOutlet weak var displayResultOL: UILabel!
    
    var amount = ""
    var discount = ""
    var priceAfterDisocunt = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        diaplayAmntOL.text! = "My amount: \(amount)"
        displayDiscRateOL.text! += discount
        displayResultOL.text! += priceAfterDisocunt
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
