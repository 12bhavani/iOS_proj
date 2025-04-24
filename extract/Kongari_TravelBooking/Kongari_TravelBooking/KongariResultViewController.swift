//
//  KongariResultViewController.swift
//  Kongari_TravelBooking
//
//  Created by Bhavani Kongari on 4/14/25.
//

import UIKit

class KongariResultViewController: UIViewController {

    
    @IBOutlet weak var imageOL: UIImageView!
    
    @IBOutlet weak var travellerNameOL: UILabel!
    
    @IBOutlet weak var noOfTravellersOL: UILabel!
    
    @IBOutlet weak var cabinTypeOL: UILabel!
    
    @IBOutlet weak var totalCostOL: UILabel!
    
    @IBOutlet weak var resultOL: UILabel!
    
    var travellerK = ""
    var noOfTK = 0
    var typeK = ""
    var amntK = 0
    var resK = ""
    var imgK = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        travellerNameOL.text! = "Traveller Name: \(travellerK)"
        noOfTravellersOL.text! = "No. of Guests: \(noOfTK)"
        cabinTypeOL.text! = "Class Type: \(typeK)"
        if(amntK != 0){
            totalCostOL.text! = "Total Cost: $\(amntK)"
        }
        else{
            totalCostOL.text! = "Total Cost: "
        }
        resultOL.text! = resK
        imageOL.image = UIImage(named: imgK)
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
