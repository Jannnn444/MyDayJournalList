//
//  Day_JournalApp.swift
//  Day Journal
//
//  Created by yucian huang on 2024/3/10.
//

import SwiftUI
import SwiftData

@main
struct Day_JournalApp: App {
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            JournalEntry.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
    
    var body: some Scene {
        WindowGroup {
            JournalEntryListView()
        }
        .modelContainer(sharedModelContainer)
    }
}

// startpoint of the app
