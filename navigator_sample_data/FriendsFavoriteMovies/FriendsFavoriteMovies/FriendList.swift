//
//  FriendList.swift
//  FriendsFavoriteMovies
//
//  Created by Mengtao on 2025/9/30.
//

import SwiftUI
import SwiftData

struct FriendList: View {
    
    @Query(sort: \Friend.name) private var friends: [Friend]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        NavigationSplitView{
            List {
                ForEach(friends) {friend in
                    NavigationLink(friend.name) {
                        Text("Detail for \(friend.name)")
                            .navigationTitle("friend")
                            .navigationBarTitleDisplayMode(.inline)
                    }
                }
            }
            .navigationTitle("Friend")
        }detail: {
            
        }

    }
}

#Preview {
    FriendList()
        .modelContainer(SampleData.shared.modelContainer)
}
