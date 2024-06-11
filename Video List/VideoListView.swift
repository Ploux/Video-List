//
//  ContentView.swift
//  Video List
//
//  Created by Peter Loux on 6/11/24.
//

import SwiftUI

struct VideoListView: View {
    var videos: [Video] = VideoList.topTen
    var body: some View {
        NavigationView {
            List(videos, id: \.id) { video in
                HStack {
                    Image("average-dev")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 70)
                        .cornerRadius(4)
                    VStack (alignment: .leading, spacing: 5) {
                        Text("I'm an Average Developer")
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.5)
                        Text("January 1, 2021")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            } // end List
            .navigationTitle("Top Ten")
        
        } // end NavigationView
        
    } // end of body
    
} // end VideoListView

#Preview {
    VideoListView()
}
