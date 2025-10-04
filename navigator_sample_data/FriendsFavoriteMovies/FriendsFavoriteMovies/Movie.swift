//
//  Movie.swift
//  FriendsFavoriteMovies
//
//  Created by Mengtao on 2025/9/30.
//

import Foundation
import SwiftData

@Model
class Movie {
    var title:String
    var releaseDate: Date
    
    init(title: String, releaseDate: Date) {
        self.title = title
        self.releaseDate = releaseDate
    }
    
    static func pareseDate(date:String) -> Date {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        formatter.locale = Locale(identifier: "zh_CN")
        return formatter.date(from: date) ?? Date()
    }
    
    static let sampleData = [
        Movie(title: "aa", releaseDate: pareseDate(date: "2024-12-21")),
        Movie(title: "aa", releaseDate: pareseDate(date: "2024-12-21")),
        Movie(title: "aa", releaseDate: pareseDate(date: "2024-12-21"))
    ]
}
