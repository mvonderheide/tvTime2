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
                HStack{
                    Text("Netflix").tag(StreamingService.netflix)
                    Image("netflix")
                }
                HStack{
                    Text("Amazon").tag(StreamingService.amazon)
                    Image("amazon")
                }
                HStack{
                    Text("Hulu").tag(StreamingService.hulu)
                    Image("hulu")
                }
                HStack{
                    Text("Disney+").tag(StreamingService.disneyPlus)
                    Image("disney")
                }
                HStack{
                    Text("Paramount Plus").tag(StreamingService.paramountPlus)
                    Image("paramount")
                }
                HStack{
                    Text("Peacock").tag(StreamingService.peacock)
                    Image("peacock")
                }
                HStack{
                    Text("Showtime").tag(StreamingService.showtime)
                    Image("showtime")
                }
                HStack{
                    Text("Apple TV").tag(StreamingService.appleTV)
                    Image("appletv")
                }
                HStack{
                    Text("HBO").tag(StreamingService.HBO)
                    Image("hbo")
                }
            })
            Text("Format")
            Picker("Format", selection: $show.format, content: {
                Text("Series").tag(Format.series)
                Text("Movie").tag(Format.movie)
                Text("Documentary").tag(Format.documentary)
            })
            Text("Genre")
            Picker("Genre", selection: $show.genre, content: {
                HStack{
                    Text("Horror").tag(Genre.horror)
                    Image("horror")
                }
                HStack{
                    Text("Drama").tag(Genre.drama)
                    Image("drama")
                }
                HStack{
                    Text("Western").tag(Genre.western)
                    Image("western")
                }
                HStack{
                    Text("Comedy").tag(Genre.comedy)
                    Image("comedy")
                }
                HStack{
                    Text("SciFi").tag(Genre.sciFi)
                    Image("scifi")
                }
                HStack{
                    Text("Thriller").tag(Genre.thriller)
                    Image("thriller")
                }
                HStack{
                    Text("Fantasy").tag(Genre.fantasy)
                    Image("fantasy")
                }
                HStack{
                    Text("Adventure").tag(Genre.adventure)
                    Image("adventure")
                }
                HStack{
                    Text("Animation").tag(Genre.animation)
                    Image("animation")
                }
                HStack{
                    Text("War").tag(Genre.war)
                    Image("war")
                }
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
