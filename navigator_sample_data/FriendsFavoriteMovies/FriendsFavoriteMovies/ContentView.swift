//
//  ContentView.swift
//  FriendsFavoriteMovies
//
//  Created by 陆梦涛 on 2025/9/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Friends", systemImage: "person.and.person") {
                Text("Friend")
            }
            Tab("Movies", systemImage: "film.stack") {
                Text("Movie")
            }
        }
    }
}

#Preview {
    ContentView()
}
