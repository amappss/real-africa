//
//  CoverImageView.swift
//  Real Africa
//
//  Created by Arsalan majlesi on 7/15/21.
//

import SwiftUI

struct CoverImageView: View {
    var images: [CoverImage]
    
    var body: some View {
        TabView{
            ForEach(images) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFit()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView(images: [CoverImage(id: 1, name: "cover-lion")])
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
