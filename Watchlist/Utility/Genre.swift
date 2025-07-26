//
//  Genre.swift
//  Watchlist
//
//  Created by Samuel Adekunle on 26/07/2025.
//

import Foundation

enum Genre: Int, Codable, CaseIterable, Identifiable {
    var id: Int {
        rawValue
    }
    
    case action = 1
    case adventure = 2
    case animation = 3
    case comedy = 4
    case drama = 5
    case fantasy = 6
    case horror = 7
    case romance = 8
    case scienceFiction = 9
    case thriller = 10
    case scifi = 11
    case crime = 12
}

extension Genre {
    var name: String {
        switch self {
        case .action:
            "Action"
        case .adventure:
            "Adeventure"
        case .animation:
            "Animation"
        case .comedy:
            "Comedy"
        case .drama:
            "Drama"
        case .fantasy:
            "Fantasy"
        case .horror:
            "Horror"
        case .romance:
            "Romance"
        case .scienceFiction:
            "Science Fiction"
        case .thriller:
            "Triller"
        case .scifi:
            "Sci-fi"
        case .crime:
            "Crime"
        }
    }
}
