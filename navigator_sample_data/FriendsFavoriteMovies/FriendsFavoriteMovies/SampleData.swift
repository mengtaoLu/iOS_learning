//
//SampleData.swift
//FriendsFavoriteMovies
//
//Created by Mengtao on 2025/9/30.
//Copyright (c) 2025 .
  
import Foundation
import SwiftData

@MainActor
class SampleData {
    static let shared = SampleData()
    
    
    let modelContainer:ModelContainer;
    
    var context: ModelContext {
        modelContainer.mainContext
    }
    
    private init() {
        let schema = Schema([
            Friend.self,
            Movie.self
        ])
        
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: true)
        
        do {
            modelContainer = try ModelContainer(for: schema, configurations: [modelConfiguration])
            
            insertSampleData()
            
        } catch {
            fatalError("Could not create model cause by : \(error)")
        }
    }
    
    private func insertSampleData() {
        for friend in Friend.sampleData {
            context.insert(friend)
        }
        
        for Movie in Movie.sampleData {
            context.insert(Movie)
        }
    }
}
