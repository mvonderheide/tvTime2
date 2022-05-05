//
//  MyStuff.swift
//  tvTime2
//
//  Created by Administrator on 5/4/22.
//

import SwiftUI


struct MyStuff: View {
    var body: some View {
        VStack{
            NavigationLink(
                destination: MyWatchlist(),
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
            
            NavigationLink(
                destination: MyWatchlist(),
                label: {
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
                })
            
            
            NavigationLink(
                destination: MyWatchlist(),
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
          .navigationTitle("My Stuff")
            Spacer()
        }
    }
}

struct MyStuff_Previews: PreviewProvider {
    static var previews: some View {
        MyStuff()
    }
}

