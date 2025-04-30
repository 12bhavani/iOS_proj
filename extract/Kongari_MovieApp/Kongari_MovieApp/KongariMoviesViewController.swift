//
//  ViewController.swift
//  Kongari_MovieApp
//
//  Created by Bhavani Kongari on 4/24/25.
//

import UIKit

class KongariMoviesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        genres.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create the cell
        let cell = moviesTableView.dequeueReusableCell(withIdentifier: "genreCell", for: indexPath)//indexPath is 0-4 indexes of array in this case
        
        //populate the cell
        cell.textLabel?.text = genres[indexPath.row]
        
        //return the cell
        return cell
    }

    
    @IBOutlet weak var moviesTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        moviesTableView.dataSource = self
        moviesTableView.delegate = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "listsSegue" {
            if let destination = segue.destination as? MovieListViewController,
               let selectedIndexPath = moviesTableView.indexPathForSelectedRow {
                let selectedGenre = genres[selectedIndexPath.row]
                if let genreMovies = allMovies.first(where: { $0.genre == selectedGenre }) {
                    destination.selectedMovies = genreMovies.list_Array
                    destination.genreTitle = genreMovies.genre
                }
            }
        }
    }
}

