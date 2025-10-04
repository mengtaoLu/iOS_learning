//
//  Friends.swift
//  FriendsFavoriteMovies
//
//  Created by  Mengtao  on 2025/9/30.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name:String
    
    init(name:String) {
        self.name = name
    }
    
    static let sampleData = [
        Friend(name: "a"),
        Friend(name: "b"),
        Friend(name: "c"),
        Friend(name: "d"),
        Friend(name: "e")
    ]
}
