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
                NavigationLink(
                    destination: VideoDetailView(video: video), label: {
                        VideoCell(video: video)
                    })
            } // end List
            .navigationTitle("Top Ten")
        } // end NavigationView
    } // end of body
} // end VideoListView

struct VideoCell: View {
    
    var video: Video
    
    var body: some View {
        Image(video.imageName)
            .resizable()
            .scaledToFit()
            .frame(height: 70)
            .cornerRadius(4)
            .padding(.vertical, 4)
        VStack (alignment: .leading, spacing: 5) {
            Text(video.title)
                .fontWeight(.semibold)
                .lineLimit(2)
                .minimumScaleFactor(0.5)
            Text(video.uploadDate)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}
#Preview {
    VideoListView()
}
