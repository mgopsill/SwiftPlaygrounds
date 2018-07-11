//: Playground - noun: a place where people can play

import UIKit

// KEEP THE BELOW DO NOT DELETE
class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
    Movie(name: "Casablanca", director: "Michael Curtiz"),
    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
    Movie(name: "Citizen Kane", director: "Orson Welles"),
    Song(name: "The One And Only", artist: "Chesney Hawkes"),
    Song(name: "Never Gonna Give You Up", artist: "Rick Astley")
]
// the type of "library" is inferred to be [MediaItem]

// create a count for movies and songs
// loop through the array and count the movies and songs



// Create a loop that will print the below, print statements included for yuou
// print("Movie: \(movie.name), by \(movie.director)")
// print("Song: \(song.name), by \(song.artist)")
// Movie: Casablanca, dir. Michael Curtiz
// Song: Blue Suede Shoes, by Elvis Presley
// Movie: Citizen Kane, dir. Orson Welles
// Song: The One And Only, by Chesney Hawkes
// Song: Never Gonna Give You Up, by Rick Astley



// KEEP THIS - DO NOT DELETE
var things = [Any]()

things.append(0)
things.append(0.0)
things.append("hello")

// loop through this array of Any's and print what they are



