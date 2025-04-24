//
//  ViewController.swift
//  emojianimation
//
//  Created by Bhavani Kongari on 3/19/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageOL: UIImageView!
    
    @IBOutlet weak var happyBtn: UIButton!
    
    @IBOutlet weak var sadBtn: UIButton!
    
    @IBOutlet weak var angryBtn: UIButton!
    
    @IBOutlet weak var shakeMeBtn: UIButton!
    
    @IBOutlet weak var showBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
            imageOL.frame.origin.x = view.frame.maxX
            happyBtn.frame.origin.x = view.frame.width
            sadBtn.frame.origin.x = view.frame.width
            angryBtn.frame.origin.x = view.frame.width
            shakeMeBtn.frame.origin.x = view.frame.width
        }
    
    @IBAction func happyBtnClicked(_ sender: UIButton) {
        animate("happy");
    }
    
    @IBAction func sadBtnClicked(_ sender: UIButton) {
        animate("sad")
    }
    
    @IBAction func angryBtnClicked(_ sender: UIButton) {
        animate("angry")
    }
    
    @IBAction func shakeMeBtnClicked(_ sender: Any) {
        var width = imageOL.frame.width
        width += 40
        var height = imageOL.frame.height
        height = height + 40
        var x  =  imageOL.frame.origin.x-20
        var y = imageOL.frame.origin.y-20
        var largeFrame = CGRect(x: x, y: y, width: width, height: height)
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 50, animations: {
                    self.imageOL.frame = largeFrame
                })
    }
    
    func showBtnClicked(_ sender: Any) {
        UIView.animate(withDuration: 1, animations: {
            self.imageOL.center.x = self.view.center.x
            self.happyBtn.center.x = self.view.center.x;
            self.sadBtn.center.x = self.view.center.x;
            self.angryBtn.center.x = self.view.center.x;
            self.shakeMeBtn.center.x = self.view.center.x
            })
        showBtn.isEnabled = false
    }
    
//    func animate(_ imageName : String){
//        UIView.animate(withDuration: 1, animations: {
//                    self.imageOL.alpha = 0
//                })
//        UIView.animate(withDuration: 1, delay:0.5, animations: {
//                    self.imageOL.alpha = 1
//                    self.imageOL.image = UIImage(named: imageName)
//                })
//    }
    
}

