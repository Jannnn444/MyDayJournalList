//
//  EditJournalEntryVIew.swift
//  Day Journal
//
//  Created by yucian huang on 2024/3/12.
//

import SwiftUI

struct EditJournalEntryVIew: View {
    
    @State var editingJournalEntry: JournalEntry
    @State var editMode = false
    
    
    var body: some View {
        NavigationStack{
        if editMode {
            
                Form {
                    TextField("Title", text: $editingJournalEntry.title)
                    DatePicker("Date", selection: $editingJournalEntry.date, displayedComponents: .date)
                    Text(String(repeating: "⭐️", count: Int(editingJournalEntry.rating)))
                    Slider(value: $editingJournalEntry.rating, in: 1...5, step: 1)
                    TextEditor(text: $editingJournalEntry.text)
                }
                
                Text("Edit mode")
                    .toolbar {
                        Button("Done") {
                            editMode = false
                        }
                    }
            
            } else {
                JournalEntryDetailView(detailJournalEntry: editingJournalEntry)
                    .toolbar {
                        Button("Edit") {
                            editMode = true
                        }
                    }
            }
        }
    }
}

#Preview {
    EditJournalEntryVIew(editingJournalEntry: JournalEntry(title: "Good days coming", text: "Money, Love, Happiness on the way, hang on 🌞", rating: 5, date: Date.now.addingTimeInterval(1 * 24 * 60 * 60)))
}
