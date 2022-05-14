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
                })
            
//                        NavigationLink(
//                            destination: AddShow(),
//                            label: {
//                                ZStack{
//                                    RoundedRectangle(cornerRadius: 15)
//                                        .frame(height: 100)
//                                        .foregroundColor(.white)
//                                        .shadow(radius: 5)
//                                        .padding()
//                                    HStack{
//                                        Image(systemName: "plus")
//                                            .resizable()
//                                            .frame(width: 50, height: 50)
//                                        Text("Add a Show")
//                                            .font(.title2)
//                                    }
//                                }
//                            })
            
            NavigationLink(
                destination: WhatToWatch(shows: $shows),
                label: {
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

