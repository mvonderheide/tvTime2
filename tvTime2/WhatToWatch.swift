//
//  WhatToWatch.swift
//  tvTime2
//
//  Created by Administrator on 5/5/22.
//

import SwiftUI

struct WhatToWatch: View {
    @Binding var shows: [Show]
    @State var showPicked: Show?
    
    
    var body: some View {
        VStack {
            if showPicked != nil {
                ZStack{
                    Image("crystalBall")
                        .resizable()
                        .frame(width: 500, height: 500)
                    Text("You should watch \(showPicked!.title)!")
                        .font(.headline)
                }
            }
        } .onAppear {
            showPicked = shows.randomElement()
        }
    }
}

//struct WhatToWatch_Previews: PreviewProvider {
//    static var previews: some View {
//        WhatToWatch(shows: <#Binding<[Show]>#>)
//    }
//}

