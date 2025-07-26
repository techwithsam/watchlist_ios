//
//  Movie.swift
//  Watchlist
//
//  Created by Samuel Adekunle on 26/07/2025.
//

import Foundation
import SwiftData

@Model
class Movie {
    var title: String
    var genre: Genre
    
    init(title: String, genre: Genre) {
        self.title = title
        self.genre = genre
    }
}

extension Movie {
    @MainActor
    static var preview: ModelContainer {
        let container = try! ModelContainer(for: Movie.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        
        container.mainContext.insert(Movie(title: "John Wick", genre: Genre(rawValue: 1)!))
        container.mainContext.insert(Movie(title: "Mission Impossible", genre: Genre(rawValue: 2)!))
        container.mainContext.insert(Movie(title: "Avengers III", genre: Genre(rawValue: 3)!))
        container.mainContext.insert(Movie(title: "40 Acres", genre: Genre(rawValue: 4)!))
        container.mainContext.insert(Movie(title: "Dead or Alive", genre: Genre(rawValue: 5)!))
        container.mainContext.insert(Movie(title: "The Blacklist", genre: Genre(rawValue: 12)!))
        container.mainContext.insert(Movie(title: "Dirty Dance", genre: Genre(rawValue: 7)!))
        container.mainContext.insert(Movie(title: "Lord of the Ring", genre: Genre(rawValue: 8)!))
        container.mainContext.insert(Movie(title: "The Revenant", genre: Genre(rawValue: 9)!))
        container.mainContext.insert(Movie(title: "Countdown", genre: Genre(rawValue: 10)!))
        
        
        return container
    }
}
