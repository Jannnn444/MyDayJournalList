//
//  ContentView.swift
//  Day Journal
//
//  Created by yucian huang on 2024/3/10.
//

import SwiftUI
import SwiftData

struct JournalEntryListView: View {
     
    @Environment(\.modelContext) private var modelContext
    @Query(sort: \JournalEntry.date, order: .reverse) private var journalEntries: [JournalEntry]
    
    @State var showCreateView = false
    @State private var searchText = ""

    var body: some View {
        NavigationStack {
            
            // journalEntries from the journalEntry listedItems by looping
            List(searchResults) { listedJournalEntry in
                
                NavigationLink(destination: EditJournalEntryVIew(editingJournalEntry: listedJournalEntry)) {
                    
                    JournalEntryRowView(rowJournalEntry: listedJournalEntry)
                }
            }
            .navigationTitle("\(journalEntries.count) Journal Entries")
            .toolbar {
                
                Button(action: {
                    showCreateView = true
                }) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            .sheet(isPresented: $showCreateView) {
                CreateJournalEntryView()
            }
            
            }
        .searchable(text: $searchText)
        
        }
    
    var searchResults: [JournalEntry] {
        if searchText.isEmpty {
            return journalEntries
        } else {
            return journalEntries.filter { $0.title.contains(searchText) || $0.text.contains(searchText) }
        }
}



 
 
#Preview {
    JournalEntryListView()
        .modelContainer(for: JournalEntry.self, inMemory: true)
}

