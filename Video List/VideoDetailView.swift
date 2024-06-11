//
//  VideoDetailView.swift
//  Video List
//
//  Created by Peter Loux on 6/11/24.
//

import SwiftUI

struct VideoDetailView: View {
    var swing: Swing
    var body: some View {
        VStack(spacing:20) {

            
            Image(swing.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 450)
                .cornerRadius(12)
            Text(swing.date)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack (spacing: 40) {
                Label("\(swing.smoothness)", systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            
                Text(swing.course)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Text(swing.club)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: swing.url, label: {
                StandardButton(title: "Watch Swing")
            })
            
            Spacer()
                
        }
    }
    
}


struct StandardButton: View {
    var title: String
    var body: some View {
        Text(title)
            .bold()
            .font(.title2)
            .frame(width: 280, height: 50, alignment: .center)
            .background(Color(.systemRed))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}


#Preview {
    VideoDetailView(swing: SwingList.Swings.first!)
}
