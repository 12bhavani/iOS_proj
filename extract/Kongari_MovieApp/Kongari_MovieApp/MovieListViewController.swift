//
//  MovieListViewController.swift
//  Kongari_MovieApp
//
//  Created by Bhavani Kongari on 4/24/25.
//

import UIKit

class MovieListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        selectedMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create the cell
        let cell = movieListTableView.dequeueReusableCell(withIdentifier: "listCell", for: indexPath)//indexPath is 0-4 indexes of array in this case
        
        //populate the cell
        
        let movie = selectedMovies[indexPath.row]
        cell.textLabel?.text = movie.movieName

        
        //return the cell
        return cell
    }
    

    var selectedMovies: [MovieList] = []
        var genreTitle: String = ""
    
    @IBOutlet weak var movieListTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = genreTitle
        movieListTableView.dataSource = self
        movieListTableView.delegate = self
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "movieInfoSegue"{
            var destination = segue.destination as! MovieInfoViewController
            destination.movieResult = selectedMovies[(movieListTableView.indexPathForSelectedRow?.row)!]
            destination.img = selectedMovies[(movieListTableView.indexPathForSelectedRow?.row)!].movieImage
        
        }
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
