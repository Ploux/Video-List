//
//  VideoDetailView.swift
//  Video List
//
//  Created by Peter Loux on 6/11/24.
//

import SwiftUI

struct VideoDetailView: View {
    var video: Video
    var body: some View {
        VStack {
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(12)
            Text(video.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding()
            
            HStack {
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }

        }
    }
}

#Preview {
    VideoDetailView(video: VideoList.topTen.first!)
}
