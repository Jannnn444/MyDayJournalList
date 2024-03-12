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
    @Query private var journalEntries: [JournalEntry]
    
    @State var showCreateView = false

    var body: some View {
        NavigationStack {
            
            // journalEntries from the journalEntry listedItems by looping
            List(journalEntries) { listedJournalEntry in
                
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
        
        }
       
    }
    
 
 
#Preview {
    JournalEntryListView()
        .modelContainer(for: JournalEntry.self, inMemory: true)
}

