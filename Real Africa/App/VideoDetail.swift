//
//  VideoDetail.swift
//  Real Africa
//
//  Created by Arsalan majlesi on 7/15/21.
//

import SwiftUI
import AVKit

struct VideoDetail: View {
    let videoName: String
    let title: String
    var body: some View {
        VideoPlayer(player: VideoHelper.playVideo(withFileName: videoName, andExtention: "mp4"))
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width:45,height: 45)
                    .padding()
                ,alignment: .topLeading
            )
            .navigationBarTitle(title,displayMode: .inline)            
    }
}

struct VideoDetail_Previews: PreviewProvider {
    
    static var previews: some View {
        NavigationView{
            VideoDetail(videoName: VIDEOS[0].id, title: VIDEOS[0].name)
        }
    }
}
