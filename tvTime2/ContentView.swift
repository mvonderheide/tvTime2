//
//  ContentView.swift
//  tvTime2
//
//  Created by Administrator on 5/4/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            NavigationLink {
                MyStuff()
            } label: {
                Text("Hi")
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
