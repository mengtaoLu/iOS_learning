//
//MovieList.swift
//FriendsFavoriteMovies
//
//Created by Mengtao on 2025/9/30.
//Copyright (c) 2025 .
  
import SwiftUI
import SwiftData

struct MovieList: View {
    @Query(sort: \Movie.title) private var movies:[Movie]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        List {
            ForEach(movies) {
                movie in
                HStack {
                    Text(movie.title)
                    Text(movie.releaseDate.description)
                }
            }
        }
    }
}

#Preview{
    MovieList()
        .modelContainer(SampleData.shared.modelContainer)
}
