//
//  WatchlistApp.swift
//  Watchlist
//
//  Created by Samuel Adekunle on 26/07/2025.
//

import SwiftUI
import SwiftData

@main
struct WatchlistApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Movie.self)
        }
    }
}
