//
//  ViewController.swift
//  movieApp_CollectionView
//
//  Created by Bhavani Kongari on 4/10/25.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //create a cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as! MovieCellCollectionViewCell
        //populate cell
        cell.assignMovie(with: movies[indexPath.row])
        //return cell
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        titleLabel.text! = "Movie Title: \(movies[indexPath.row].title)"
        yrLabel.text! = "Year: \(movies[indexPath.row].releasedYear)"
        ratingLabel.text! = "Movie Rating: \(movies[indexPath.row].movieRating)"
        revenueLabel.text! = "Box Office Revenue: \(movies[indexPath.row].boxOffice)"
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var yrLabel: UILabel!
    
    @IBOutlet weak var ratingLabel: UILabel!
    
    @IBOutlet weak var revenueLabel: UILabel!
    
    @IBOutlet weak var collectionViewOL: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionViewOL.dataSource = self
        collectionViewOL.delegate = self
    }


}

