//
//  MovieCellCollectionViewCell.swift
//  movieApp_CollectionView
//
//  Created by Bhavani Kongari on 4/10/25.
//

import UIKit

class MovieCellCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ImageViewOL: UIImageView!
    
    func assignMovie(with movie: Movie){
        ImageViewOL.image = movie.image
    }
    
}
