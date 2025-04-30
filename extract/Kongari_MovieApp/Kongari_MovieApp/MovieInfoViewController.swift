//
//  MovieInfoViewController.swift
//  Kongari_MovieApp
//
//  Created by Bhavani Kongari on 4/24/25.
//

import UIKit

class MovieInfoViewController: UIViewController {

    
    @IBOutlet weak var movieImageViewOutlet: UIImageView!
    
    
    @IBOutlet weak var movieInfoOutlet: UITextView!
    
    var movieResult:MovieList?
    var img = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = movieResult?.movieName
        movieImageViewOutlet.alpha = 0.0
        UIView.animate(withDuration: 1.5) {
            self.movieImageViewOutlet.alpha = 1.0
            self.movieImageViewOutlet.image = UIImage(named: self.img)
        }
    }
    
    
    @IBAction func showInfoAction(_ sender: UIButton) {
        movieInfoOutlet.text! = (movieResult?.movieInfo)!
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
