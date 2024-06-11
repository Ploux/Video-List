//
//  SwingList.swift
//  Sample Swings for Testing
//
//  Created by Pete Loux on 6/11/24
//

import SwiftUI

struct Swing: Identifiable {
    let id = UUID()
    let imageName: String
    let date: String
    let time: String
    // from detail view
    let course: String
    let club: String
    let smoothness: Int
    let url: URL
}

struct SwingList {
    
    static let Swings = [
        Swing(imageName: "vid1",
              date: "June 10, 2024",
              time: "15:34:12",
              course: "Shady Pines",
              club: "9 Iron",
              smoothness: 98,
              url: URL(string: "https://youtu.be/oUluU_Yj4z4")!),
        
        Swing(imageName: "vid2",
              date: "June 9, 2024",
              time: "12:34:13",
              course: "The Masters",
              club: "8 Iron",
              smoothness: 99,
              url: URL(string: "https://youtu.be/dQw4w9WgXcQ")!),
        
        Swing(imageName: "vid3",
              date: "June 8, 2024",
              time: "18:34:19",
              course: "Golden Lion",
              club: "7 Iron",
              smoothness: 54,
              url: URL(string: "https://youtu.be/bBUCSo5ylkc")!),
        
        Swing(imageName: "vid4",
              date: "June 7, 2024",
              time: "22:16:55",
              course: "Green Acres",
              club: "Wedge",
              smoothness: 73,
              url: URL(string: "https://youtu.be/X-dOt_zQAC4")!),
        
        Swing(imageName: "vid5",
              date: "June 6, 2024",
              time: "14:34:32",
              course: "Putt Putt",
              club: "Putter",
              smoothness: 16,
              url: URL(string: "https://youtu.be/-g5F3xpzPN4")!),
        
        
        Swing(imageName: "vid6",
              date: "June 6, 2024",
              time: "14:33:27",
              course: "Putt Putt",
              club: "4 Wood",
              smoothness: 78,
              url: URL(string: "https://youtu.be/iOT7wrsr1qM")!),
        
        Swing(imageName: "vid7",
              date: "June 6, 2024",
              time: "13:33:12",
              course: "Putt Putt",
              club: "Driver",
              smoothness: 77,
              url: URL(string: "https://youtu.be/D7HjUw_vyNs")!),
        
        Swing(imageName: "vid8",
              date: "June 6, 2024",
              time: "7:34:56",
              course: "Putt Putt",
              club: "9 Iron",
              smoothness: 26,
              url: URL(string: "https://youtu.be/h6eZ31gB8Ek")!),
        
    ]
}


