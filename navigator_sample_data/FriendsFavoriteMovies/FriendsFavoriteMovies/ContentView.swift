//
//  ContentView.swift
//  FriendsFavoriteMovies
//
//  Created by Mengtao on 2025/9/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Friends", systemImage: "person.and.person") {
                FriendList()
            }
            Tab("Movies", systemImage: "film.stack") {
                MovieList()
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(SampleData.shared.modelContainer)
}
