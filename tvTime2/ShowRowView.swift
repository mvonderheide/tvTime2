//
//  ShowRowView.swift
//  tvTime2
//
//  Created by Administrator on 5/5/22.
//

import SwiftUI

struct ShowRowView: View {
    
    var show: Show
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(show.title)
                .font(.title2)
            HStack {
                Text("Service: ")
                Text(show.service.rawValue)
            }
            HStack {
                Text("Format: ")
                Text(show.format.rawValue)
            }
            HStack {
                Text("Genre: ")
                Text(show.genre.rawValue)
            }
            HStack {
                Text("Description: ")
                Text(show.description)
            }
        }
    }
}

//struct ShowRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        ShowRowView()
//    }
//}
