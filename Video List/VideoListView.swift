//
//  ContentView.swift
//  Video List
//
//  Created by Peter Loux on 6/11/24.
//

import SwiftUI

struct VideoListView: View {
    var swings: [Swing] = SwingList.Swings
    var body: some View {
        NavigationView {
            List(swings, id: \.id) { swing in
                NavigationLink(
                    destination: VideoDetailView(swing: swing), label: {
                        VideoCell(swing: swing)
                    })
            } // end List
            .navigationTitle("My Swings")
        } // end NavigationView
    } // end of body
} // end VideoListView

struct VideoCell: View {
    
    var swing: Swing
    
    var body: some View {
        Image(swing.imageName)
            .resizable()
            .scaledToFit()
            .frame(height: 70)
            .cornerRadius(4)
            .padding(.vertical, 4)
        VStack (alignment: .leading, spacing: 5) {
            Text(swing.date)
                .fontWeight(.semibold)
            Text(swing.time)
                .font(.subheadline)
                .foregroundColor(.secondary)            
            Text(swing.course)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}
#Preview {
    VideoListView()
}
