//
//  JournalEntryDetailView.swift
//  Day Journal
//
//  Created by yucian huang on 2024/3/10.
//

import SwiftUI

struct JournalEntryDetailView: View {
    
    let detailJournalEntry: JournalEntry    //inherited from journal entry
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                
                HStack{
                    Text(detailJournalEntry.date, style: .date)
                        .bold()
                    Text("-")
                    Text(String(repeating: "⭐️", count: Int(detailJournalEntry.rating)))
                    Spacer()
                }
                .padding(.bottom)
                
                Text(detailJournalEntry.text)
            }
            .padding()
        }
        .navigationTitle(detailJournalEntry.title)   // on the navigation title position
    }
}

#Preview {
    NavigationStack {
        JournalEntryDetailView(detailJournalEntry: JournalEntry(title: "A Great Gold Day", text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent malesuada, diam et varius semper, nulla ex aliquam nisl, sit amet tristique ante libero at lacus. Nunc placerat elit velit, ac feugiat magna pretium nec. Pellentesque venenatis nisi ac vestibulum tristique. Donec hendrerit sapien ac odio finibus cursus. Integer porttitor ante nisi. Aenean tincidunt, lorem et auctor imperdiet, nibh neque ornare quam, sit amet lobortis purus quam ut dui. Morbi efficitur euismod ornare. Quisque et enim quis augue mattis placerat. Nunc fringilla augue eu lobortis tempus. Etiam vel tempus nisi. Sed bibendum enim vitae mollis varius. Sed et dignissim ligula. Aenean vitae nunc dapibus, eleifend lacus ut, dignissim tortor. Duis aliquam, ante vitae aliquam tincidunt, velit dolor pellentesque leo, sed iaculis turpis neque at lacus. Proin malesuada gravida ornare. Quisque varius dignissim est, eget placerat ex condimentum ac.Nam eget nulla eget quam vestibulum iaculis vulputate ut massa. Nam efficitur, felis non volutpat malesuada, enim leo condimentum odio, nec lacinia sapien lectus non lacus. Morbi a sollicitudin justo. Sed hendrerit volutpat felis et convallis. Nulla mattis, massa nec vulputate ultrices, nunc velit auctor nisi, ut posuere lacus nibh quis lectus. Maecenas malesuada sed nisi a elementum. Vestibulum urna erat, consequat tempor pulvinar quis, ultricies eget mauris. Aenean pharetra auctor tempor. Phasellus malesuada, lacus non vulputate pellentesque, eros orci vehicula sem, cursus dictum lectus libero et ex. Praesent sit amet lectus mattis, elementum dui in, suscipit nibh. Mauris nec vestibulum orci. Aliquam erat volutpat. Aliquam sit amet egestas felis. Vestibulum viverra ligula non orci sodales dictum. Suspendisse potenti.Donec malesuada mi lacus, sed ullamcorper metus commodo sed. Nam blandit aliquam dolor, a blandit justo mattis sit amet. Duis sit amet nibh nec sem mattis accumsan et et nulla. Etiam non urna quis dui pellentesque pellentesque non vitae magna. Pellentesque vitae pellentesque ex. Phasellus consectetur luctus fermentum. Nunc sit amet nulla vitae metus finibus aliquam.Nulla dictum non augue vel placerat. Aliquam tellus nulla, finibus non egestas in, imperdiet id dui. Quisque ac facilisis tellus, nec ullamcorper sapien. Fusce suscipit nibh quis dictum varius. Curabitur condimentum augue sit amet massa malesuada faucibus. Cras ultricies turpis sed semper ultricies. Pellentesque sed vehicula sem. Etiam aliquet molestie tincidunt. Nullam molestie egestas quam at pharetra. Fusce id scelerisque dolor, et porta dolor. Maecenas at rutrum felis, at aliquam ligula. Nullam quis ipsum mauris. Praesent fringilla et justo eget volutpat. Etiam semper ornare feugiat. Aenean id massa eu metus porta facilisis at vel eros. Proin congue, turpis nec commodo interdum, neque metus mattis ante, in varius justo velit ultrices dui. Vestibulum sed lectus vitae velit dapibus sagittis sit amet eget metus. Proin porttitor faucibus tortor. Mauris a venenatis mauris. Nulla dui velit, posuere eget tempus at, commodo quis mauris. Nunc scelerisque ante non tortor lacinia, et tincidunt libero dapibus. Mauris ut lacinia nisl, nec facilisis ipsum.Proin tempus varius ipsum et rhoncus. Curabitur felis eros, porttitor a dui ut, ullamcorper volutpat arcu. Mauris eget leo dui. In pharetra quis leo id condimentum. Maecenas et purus ut velit varius tempor eu eu nisl. Aenean sit amet massa ac elit dignissim pretium. Integer sagittis volutpat nunc, finibus semper turpis aliquam quis. Nunc pulvinar nec orci non condimentum. Phasellus tristique dolor id nisl viverra posuere at id orci. Etiam fermentum congue turpis. Nullam venenatis lacus in lectus fringilla, vitae dapibus risus hendrerit.Nam pulvinar nec leo eget malesuada. Nulla egestas mauris vulputate diam tincidunt sollicitudin. Proin tempor justo vel sodales rutrum. Nulla eget est lacinia, dapibus mi eu, interdum nunc. Etiam vel tortor non sapien cursus vehicula eu a ante. Nulla at est nisl. Praesent dui diam, maximus id auctor eu, gravida quis justo. Duis tristique, lectus vel blandit placerat, odio lacus consequat odio, eu sollicitudin est arcu eget enim. Sed velit felis, varius tincidunt fringilla et, ultrices non augue. Quisque facilisis, felis eu molestie accumsan, enim odio condimentum lectus, interdum volutpat lectus velit porta urna. Pellentesque ut eros eget mi placerat efficitur non ac urna.Pellentesque sed placerat justo. Phasellus laoreet, urna sit amet pulvinar tincidunt, purus tellus finibus ipsum, id commodo dui arcu eget tortor. Nam venenatis velit vel congue luctus. Phasellus bibendum vulputate risus. Vestibulum porttitor blandit massa ac volutpat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam quis imperdiet lorem. Donec lacinia magna in turpis congue vehicula. Sed eget erat at magna vehicula vehicula. Aenean dui tortor, auctor in pretium et, mattis vitae augue. Donec accumsan metus ac nibh blandit tempor.Suspendisse luctus neque vel nunc luctus malesuada. Integer mollis leo id facilisis tincidunt. Phasellus viverra ante ante, nec tempor libero venenatis non. Donec mauris quam, faucibus sit amet varius eget, faucibus eget mi. Duis et magna tempus, dignissim urna ac, finibus libero. Maecenas porta molestie dapibus. Phasellus tincidunt eget purus ut pharetra. Pellentesque ultricies nibh mi. Duis vitae consequat magna, id hendrerit leo. Praesent eget mi mi. Curabitur dignissim convallis neque, eu vestibulum est malesuada in. Nulla urna neque, porttitor at congue non, aliquam in sem. Cras orci velit, commodo quis convallis quis, ornare vel nunc. Morbi malesuada imperdiet ex nec tristique. Donec rhoncus nulla nunc, ut vulputate urna gravida at.Proin eget massa at lorem ullamcorper tempus at at metus. Duis sit amet elit id orci condimentum finibus. Donec lobortis tempus mollis. Aenean ultricies vitae turpis in auctor. Pellentesque aliquam tempus tempus. Vestibulum in fringilla urna. In hac habitasse platea dictumst. Phasellus blandit risus non ex feugiat auctor.", rating: 5, date: Date()))
    }
}
