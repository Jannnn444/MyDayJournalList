//
//  CreateJournalEntryView.swift
//  Day Journal
//
//  Created by yucian huang on 2024/3/12.
//

import SwiftUI

struct CreateJournalEntryView: View {
    
    @Environment(\.modelContext) private var modelContext
    
    @State var title: String = ""
    @State var text: String = ""
    @State var rating: Double = 3.0
    @State var date: Date = Date()
     
    
    var body: some View {
        NavigationStack{
            Form {
                TextField("Title", text: $title)
                DatePicker("Date", selection: $date, displayedComponents: .date)
                Text(String(repeating: "⭐️", count: Int(rating)))
                Slider(value: $rating, in: 1...5, step: 1)
                TextEditor(text: $text)
            }
            .navigationTitle("NewJournal EntryPage")
            .toolbar {
                Button("Save!") {
                    let newJournalEntry = JournalEntry(title: title, text: text, rating: rating, date: date)
                    modelContext.insert(newJournalEntry)
                    
                }
            }
        }
    }
}

#Preview {
    CreateJournalEntryView()
}





