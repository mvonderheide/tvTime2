//
//  MyStuff.swift
//  tvTime2
//
//  Created by Administrator on 5/4/22.
//

import SwiftUI


struct MyStuff: View {
    @Binding var shows: [Show]
    var body: some View {
        
        VStack{
            NavigationLink(
                destination: MyWatchlist(shows: $shows),
                label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .frame(height: 100)
                            .foregroundColor(.white)
                            .shadow(color: .black,radius: 5)
                            .padding()
                        VStack{
                            Image(systemName: "list.and.film")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .foregroundColor(.black)
                            Text("My Watchlist")
                                .font(.title2)
                                .foregroundColor(.black)
                        }
                    }
                })
            NavigationLink(
                destination: WhatToWatch(shows: $shows),
                label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .frame(height: 100)
                            .foregroundColor(.white)
                            .shadow(color:.black, radius: 5)
                            .padding()
                        VStack{
                            Image("crystalBall")
                                .resizable()
                                .frame(width: 50, height: 50)
                            Text("Can't decide what to watch?")
                                .font(.title2)
                                .foregroundColor(.black)
                        }
                    }
                })
                .navigationTitle("My Stuff")
            Spacer()
        }
    }
}


//struct MyStuff_Previews: PreviewProvider {
//    static var previews: some View {
//        MyStuff()
//    }
//}

