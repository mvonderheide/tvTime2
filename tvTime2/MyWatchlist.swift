//
//  MyWatchlist.swift
//  tvTime2
//
//  Created by Administrator on 5/4/22.
//

import SwiftUI


enum StreamingService: String {
    case netflix, amazon, hulu, disneyPlus, paramountPlus, peacock, showtime, appleTV
    //    case amazon
    //    case hulu
    //    case disneyPlus
    //    case paramountPlus
    //    case peacock
    //    case showtime
    //    case appleTV
}

enum Format: String {
    case series, movie, documentary
    //    case movie
    //    case documentary
}

enum Genre: String {
    case horror, drama, action, western, comedy, sciFi, thriller, fantasy, adventure, animation, war, mystery
    //    case drama
    //    case action
    //    case western
    //    case comedy
    //    case sciFi
    //    case thriller
    //    case fantasy
    //    case adventure
    //    case animation
    //    case war
    //    case mystery
}

struct Show: Identifiable {
    var id = UUID().uuidString
    var title = String()
    var service: StreamingService
    var format: Format
    var genre: Genre
    var description = String()
    
}

struct MyWatchlist: View {
    
    @Binding var shows: [Show]
    
    var body: some View {
        List {
            ForEach($shows) { $show in
                NavigationLink(
                    destination: AddShow(show: $show),
                    //line 58 - removed (show: $show) to fix error.  will need to add back to pass data
                    label: {
                        ShowRowView(show: show)
                    })
                
            }.onDelete { indexSet in
                shows.remove(atOffsets: indexSet)
                
            }
            .onMove(perform: { rows, newIndex in
                shows.move(fromOffsets: rows, toOffset: newIndex)
            })
        }.navigationTitle("My Watchlist")
            .navigationBarItems(leading: EditButton(),
                                trailing: Button(action: {
                shows.append (Show(title: "title", service: StreamingService.netflix,  format: Format.series, genre: Genre.drama, description: "description"))
                //category: QuoteCategory.physics)) - How do I change this to defaul to just quote category?
            }) {
                Image(systemName: "plus").imageScale(.large)
            }
            )
    }
}

//struct MyWatchlist_Previews: PreviewProvider {
//    static var previews: some View {
//        MyWatchlist()
//    }
//}
