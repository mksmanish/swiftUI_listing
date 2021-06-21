//
//  VideoDetailView.swift
//  listingSwift
//
//  Created by manish on 30/05/21.
//

import SwiftUI

struct VideoDetailView: View {
    var videos : Video
    var body: some View {
        VStack(spacing: 20.0) {
            Spacer()
            Image(videos.imageName)
                .resizable()
                .scaledToFit()
                .frame(height : 150)
                .cornerRadius(10)
            Text(videos.title)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack(spacing: 40.0) {
                Label("\(videos.viewCount)", systemImage : "eye.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(videos.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
            }
            
            Text(videos.description)
                .font(.body)
                .padding()
            Spacer()
            
            Link(destination: videos.url, label: {
                Text("Watch Now")
                    .bold()
                    .font(.title2)
                    .frame(width: 300, height: 60, alignment: .center)
                    .background(Color(.systemRed))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    
            })
        }
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(videos: VideoList.topten.first!)
    }
}
