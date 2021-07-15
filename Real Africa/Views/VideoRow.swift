//
//  VideoRow.swift
//  Real Africa
//
//  Created by Arsalan majlesi on 7/15/21.
//

import SwiftUI

struct VideoRow: View {
    let video: Video
    var body: some View {
        HStack {
            ZStack {
                Image(video.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height:80)
                    .cornerRadius(10)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height:35)
                    .shadow(radius: 4)
            }
            VStack(alignment:.leading,spacing:8) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(video.headline)
                    .font(.footnote)
            }
        }
    }
}

struct VideoRow_Previews: PreviewProvider {
    
    static var previews: some View {
        VideoRow(video: VIDEOS[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
