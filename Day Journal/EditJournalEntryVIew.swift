//
//  EditJournalEntryVIew.swift
//  Day Journal
//
//  Created by yucian huang on 2024/3/12.
//

import SwiftUI

struct EditJournalEntryVIew: View {
    
    
    @Environment(\.modelContext) private var modelContext
    @Environment(\.dismiss) var dismiss
    
    @State var editingJournalEntry: JournalEntry
    @State var editMode = true
    
    
    var body: some View {
       
        if editMode {
            
                Form {
                    TextField("Title", text: $editingJournalEntry.title)
                    DatePicker("Date", selection: $editingJournalEntry.date, displayedComponents: .date)
                    Text(String(repeating: "⭐️", count: Int(editingJournalEntry.rating)))
                    Slider(value: $editingJournalEntry.rating, in: 1...5, step: 1)
                    TextEditor(text: $editingJournalEntry.text)
                }
                .navigationTitle("Edit Mode")
                    .toolbar {
                        Button("Delete") {
                            modelContext.delete(editingJournalEntry)
                            dismiss()
                        }
                        .foregroundStyle(.red)
                        
                        Button("Done") {
                            editMode = false
                        }
                        .bold()
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

#Preview {
    EditJournalEntryVIew(editingJournalEntry: JournalEntry(title: "Good days coming", text: "Money, Love, Happiness on the way, hang on 🌞", rating: 5, date: Date.now.addingTimeInterval(1 * 24 * 60 * 60)))
}
