//
//  ViewController.swift
//  coordinators
//
//  Created by Bhavani Kongari on 3/6/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageOL: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageOL.image = UIImage(named: "puppy")
        
        let minx = imageOL.frame.minX;
        let miny = imageOL.frame.minY
        print(minx,",",miny)
             
        let midx = imageOL.frame.midX
        let midy = imageOL.frame.midY
        print(midx, ",", midy)
        
        imageOL.frame.origin.x = 0
        imageOL.frame.origin.y = 0
        
        imageOL.frame.origin.x = 193
        imageOL.frame.origin.y = 0
        
        imageOL.frame.origin.x = 0
        imageOL.frame.origin.y = 652
        
        imageOL.frame.origin.x = 193
        imageOL.frame.origin.y = 652
                
        imageOL.frame.origin.x = (393/2)-100
        imageOL.frame.origin.y = (852/2)-100
    }

}

