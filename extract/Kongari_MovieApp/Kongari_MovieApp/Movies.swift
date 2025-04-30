//
//  Movies.swift
//  Kongari_MovieApp
//
//  Created by Bhavani Kongari on 4/24/25.
//

import Foundation

struct Movies {
    var genre: String
    var list_Array: [MovieList]
}

struct MovieList {
    var movieName: String
    var movieImage: String  // Assuming image is stored as the asset name
    var movieInfo: String
}

let genres = ["Action", "Drama", "Horror", "Sci-Fi"].sorted()

let allMovies: [Movies] = [
    Movies(
        genre: "Action",
        list_Array: [
            MovieList(movieName: "Baahubali: The Beginning", movieImage: "bahubali1", movieInfo: "Shivudu discovers his royal lineage and sets out to rescue a captive queen."),
            MovieList(movieName: "Baahubali 2: The Conclusion", movieImage: "bahubali2", movieInfo: "Amarendra Baahubali's legacy is revealed as his son seeks revenge."),
            MovieList(movieName: "Pushpa: The Rise", movieImage: "pushpa", movieInfo: "A red sandalwood smuggler rises to power despite facing powerful enemies."),
            MovieList(movieName: "RRR", movieImage: "rrr", movieInfo: "Two revolutionaries fight against British colonialism and form an unbreakable bond."),
            MovieList(movieName: "Sye", movieImage: "sye", movieInfo: "Two rival student groups unite to save their college from a mafia don.")
        ]
    ),
    Movies(
        genre: "Drama",
        list_Array: [
            MovieList(movieName: "Mahanati", movieImage: "mahanati", movieInfo: "The life and struggles of legendary actress Savitri, told through the eyes of a journalist."),
            MovieList(movieName: "Jersey", movieImage: "Jersey", movieInfo: "A failed cricketer returns to the game to fulfill his son's wish for a jersey."),
            MovieList(movieName: "Vedam", movieImage: "Vedam", movieInfo: "Five people's lives intersect in a hospital during a terrorist attack."),
            MovieList(movieName: "Manam", movieImage: "Manam", movieInfo: "A magical reincarnation story that spans generations of a family."),
            MovieList(movieName: "Rangasthalam", movieImage: "Rangasthalam", movieInfo: "A hearing-impaired man fights political corruption in a 1980s rural village.")
        ]
    ),
    Movies(
        genre: "Horror",
        list_Array: [
            MovieList(movieName: "Arundhati", movieImage: "Arundhati", movieInfo: "A reincarnated princess battles an evil tantric spirit from her past."),
            MovieList(movieName: "Anando Brahma", movieImage: "anandobrahma", movieInfo: "Ghosts try to scare people away, but the new tenants have different plans."),
            MovieList(movieName: "Ekkadiki Pothavu Chinnavada", movieImage: "epc", movieInfo: "A man falls in love with a possessed girl, leading to shocking revelations."),
            MovieList(movieName: "Avunu", movieImage: "avunu", movieInfo: "A newlywed woman is haunted by a voyeuristic spirit."),
            MovieList(movieName: "Bhaagamathie", movieImage: "bhaagamathie", movieInfo: "An IAS officer is locked in a haunted bungalow as part of a political trap.")
        ]
    ),
    Movies(
        genre: "Sci-Fi",
        list_Array: [
            MovieList(movieName: "Aditya 369", movieImage: "aditya369", movieInfo: "A scientist and a young boy travel through time to the past and the future."),
            MovieList(movieName: "Okka Kshanam", movieImage: "okkakshanam", movieInfo: "A man finds his life mirroring another’s in a parallel universe."),
            MovieList(movieName: "24", movieImage: "24movie", movieInfo: "A man finds a watch that allows him to travel through time, uncovering secrets of his family."),
            MovieList(movieName: "Project K (Kalki 2898 AD)", movieImage: "kalki", movieInfo: "Set in a dystopian future, a warrior emerges in the age of darkness to fulfill an ancient prophecy."),
            MovieList(movieName: "2.0", movieImage: "robo2", movieInfo: "When mobile phones mysteriously vanish, Dr. Vaseegaran reactivates Chitti to battle a powerful force born from electromagnetic energy.")
        ]
    )
]
