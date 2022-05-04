//
//  MyStuff.swift
//  tvTime2
//
//  Created by Administrator on 5/4/22.
//

import SwiftUI

enum StreamingService: String {
    case netflix
    case amazon
    case hulu
    case disneyPlus
    case paramountPlus
    case peacock
    case showtime
    case appleTV
}

enum Format: String {
    case series
    case movie
    case documentary
}

enum Genre: String {
    case horror
    case drama
    case action
    case western
    case comedy
    case sciFi
    case thriller
    case fantasy
    case adventure
    case animation
    case war
    case mystery
}

struct Show: Identifiable {
    var id = UUID().uuidString
    var title = String()
    var service: StreamingService
    var format: Format
    var genre: Genre
    var description = String()
    
}
struct MyStuff: View {
    @State var shows = [Show(title: "", service: .netflix, format: .movie, genre: .mystery, description: "")]
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .frame(height: 100)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                    .padding()
                HStack{
                    Image(systemName: "film.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text("My Watchlist")
                        .font(.title2)
                }
            }
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .frame(height: 100)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                    .padding()
                HStack{
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text("Add a Show")
                        .font(.title2)
                }
            }
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .frame(height: 100)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                    .padding()
                HStack{
                    Image(systemName: "tv.circle.fill")
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text("What to watch")
                        .font(.title2)
                }
            }.navigationTitle("My Stuff")
            Spacer()
        }
    }
}

struct MyStuff_Previews: PreviewProvider {
    static var previews: some View {
        MyStuff()
    }
}
