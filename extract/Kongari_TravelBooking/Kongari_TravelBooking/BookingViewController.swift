//
//  ViewController.swift
//  Kongari_TravelBooking
//
//  Created by Bhavani Kongari on 4/14/25.
//

import UIKit

class BookingViewController: UIViewController {

    
    @IBOutlet weak var travellerNameOL: UITextField!
    
    @IBOutlet weak var noOfTravellersOL: UITextField!
    
    @IBOutlet weak var cabinTypeOL: UITextField!
    
    var traveller = ""
    var noOfT = 0
    var type = ""
    var amnt = 0
    var res = ""
    var img = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func bookNowButton(_ sender: UIButton) {
        traveller = travellerNameOL.text!
        noOfT = Int(noOfTravellersOL.text!)!
        type = cabinTypeOL.text!
        if(type.lowercased()=="luxury"){
            amnt = noOfT*250
            type = "Luxury"
            res = "Enjoy your Luxury Trip!"
            img = "luxury"
        }
        else if(type.lowercased()=="economy"){
            amnt = noOfT*150
            type = "Economy"
            res = "Enjoy your Economy Trip!"
            img = "economy"
        }
        else{
            type = ""
            amnt = 0
            res = "Please select a valid class"
            img = "invalid"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegue"{
            var destination = segue.destination as! KongariResultViewController
            destination.travellerK = traveller
            destination.noOfTK = noOfT
            destination.typeK = type
            destination.amntK = amnt
            destination.resK = res
            destination.imgK = img
        }
    }
}

