//
//  ContentView.swift
//  listingSwift
//
//  Created by manish on 30/05/21.
//

import SwiftUI

struct VideoListView: View {
    var videos: [Video] = VideoList.topten
    var body: some View {
    NavigationView {
        List(videos, id: \.id) { Video in
            NavigationLink(
                destination: VideoDetailView(videos:Video),label: {
                  videoCell(videos: Video)

                })
                
          
        }
        .navigationTitle("Manish's Top 10")
    }
            
    }
}

struct videoCell: View {
    var videos : Video
    var backgroundColor = LinearGradient(gradient: Gradient(colors: [Color.white, Color.blue]), startPoint: .leading, endPoint: .trailing)
    var body: some View {
       
        HStack {
           
            Image(videos.imageName)
                .resizable()
                .scaledToFit()
                .frame(height : 80)
                .cornerRadius(4)
                .padding(.vertical , 5)
            VStack(alignment : .leading,spacing: 5) {
                Text(videos.title)
                .fontWeight(.semibold)
                .lineLimit(2)
                .minimumScaleFactor(0.7)
                .foregroundColor(.green)
                Text(videos.uploadDate)
                .font(.subheadline)
                .foregroundColor(.secondary)
            }
        }
        .background(backgroundColor)
        .cornerRadius(10)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
