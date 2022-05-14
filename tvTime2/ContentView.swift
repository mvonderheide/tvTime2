//
//  ContentView.swift
//  tvTime2
//
//  Created by Administrator on 5/4/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var shows = [Show(title: "", service: .netflix, format: .movie, genre: .mystery, description: "")]
    
    var body: some View {
        NavigationView {
            NavigationLink {
                MyStuff(shows: $shows)
            } label: {
                Text("Hi")
                Text("Hi Again")
                Image("tvTime")
                    .resizable()
                    .frame(width: 600)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
