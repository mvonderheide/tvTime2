//
//  AddShow.swift
//  tvTime2
//
//  Created by Administrator on 5/4/22.
//

import SwiftUI

struct AddShow: View {
    
    @Binding var show: Show
    
    var body: some View {
        VStack (alignment: .leading){
            HStack{
                Text("Title:")
                TextField("Title", text: $show.title)
            }
            Text("Description")
            TextField("Description", text: $show.description)
                .frame(height: 75, alignment: .topLeading)
                .padding(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
            
            Text("Service")
            Picker("Category", selection: $show.service, content: {
                Text("Netflix").tag(StreamingService.netflix)
                Text("Amazon").tag(StreamingService.amazon)
                Text("Hulu").tag(StreamingService.hulu)
                Text("Disney+").tag(StreamingService.disneyPlus)
                Text("Paramount Plus").tag(StreamingService.paramountPlus)
                Text("Peacock").tag(StreamingService.peacock)
                Text("Showtime").tag(StreamingService.showtime)
                Text("Apple TV").tag(StreamingService.appleTV)
            })
            
            Text("Format")
            Picker("Format", selection: $show.format, content: {
                Text("Series").tag(Format.series)
                Text("Movie").tag(Format.movie)
                Text("Documentary").tag(Format.documentary)
            })
            
            Text("Genre")
            Picker("Genre", selection: $show.genre, content: {
                Text("Horror").tag(Genre.horror)
                Text("Drama").tag(Genre.drama)
                Text("Western").tag(Genre.western)
                Text("Comedy").tag(Genre.comedy)
                Text("SciFi").tag(Genre.sciFi)
                Text("Thriller").tag(Genre.thriller)
                Text("Fantasy").tag(Genre.fantasy)
                Text("Adventure").tag(Genre.adventure)
                Text("Animation").tag(Genre.animation)
                Text("War").tag(Genre.war)
                
               
            })
            Spacer()
        }.padding()
    }
}

//struct AddShow_Previews: PreviewProvider {
//    static var previews: some View {
//        AddShow()
//    }
//}
