//
//  JournalEntryRowView.swift
//  Day Journal
//
//  Created by yucian huang on 2024/3/11.
//

import SwiftUI

struct JournalEntryRowView: View {
    
    
    let rowJournalEntry: JournalEntry
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(rowJournalEntry.title)
                Text("-")
                Text(rowJournalEntry.text)
                    .lineLimit(1)   //this show ...
                    .foregroundStyle(.secondary)
            }
            .padding(.bottom, 1)
            HStack{
                Text(rowJournalEntry.date, style: .date)
                    .foregroundStyle(.secondary)
                Text(String(repeating: "⭐️", count: Int(rowJournalEntry.rating)))
            }
            .font(.caption)
        }
    }
}

#Preview {
    List{
        JournalEntryDetailView(detailJournalEntry: JournalEntry(title: "A Great Gold Day", text: "I found a pot of gold, I'm rich I tell ya!!", rating: 5, date: Date()))
    }
}
