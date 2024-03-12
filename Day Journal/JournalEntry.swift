//
//  JournalEntry.swift
//  Day Journal
//
//  Created by yucian huang on 2024/3/10.
//

import Foundation
import SwiftData

@Model   //-> this concluded idenfiable type
class JournalEntry {
    
    var title: String = ""
    var text: String = ""
    var rating: Double = 1
    var date: Date = Date()
     
    init(title: String, text: String, rating: Double, date: Date) {
        self.title = title
        self.text = text
        self.rating = rating
        self.date = date
    }
}

//save the property with the class we created
//let journalEntries: [JournalEntry] = [
//    JournalEntry(title: "A Great Gold Day", text: "I found a pot of gold, I'm rich I tell ya!!", rating: 5, date: Date()),
//    JournalEntry(title: "A Headache Day", text: "I woke up with a headache, need go exercise :) ", rating: 3, date: Date.now.addingTimeInterval( -3 * 24 * 60 * 60)),
//    JournalEntry(title: "Good days coming", text: "Money, Love, Happiness on the way, hang on 🌞", rating: 5, date: Date.now.addingTimeInterval(-7 * 24 * 60 * 60)),
//    JournalEntry(title: "Sweet date day", text: "Grateful with good mood, good weather, lovely lover", rating: 5, date: Date()),
//    JournalEntry(title: "Cook an awesome dinner", text: "We are what we eat, tofu the best!", rating: 5, date: Date()),
//    JournalEntry(title: "Luck, wealth, love are manifesting ✨", text: "Calm for all goods coming, I attract them all 🧘🏻‍♀️", rating: 5, date: Date()),
//    JournalEntry(title: "Work hard", text: "Work hard received luck!", rating: 5, date: Date())
//]
