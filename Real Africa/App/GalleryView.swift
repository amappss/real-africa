//
//  GalleryView.swift
//  Real Africa
//
//  Created by Arsalan majlesi on 7/15/21.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
        ScrollView(){
            
        }
        .frame(width: .infinity, height: .infinity, alignment: .center)
        .background(GalleryAnimationView())
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
