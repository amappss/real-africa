//
//  BrowseView.swift
//  Real Africa
//
//  Created by Arsalan majlesi on 7/15/21.
//

import SwiftUI

struct BrowseView: View {
    let coverImages = Bundle.main.decode(fromFile: "covers.json")
    
    var body: some View {
        NavigationView {
            List {
                CoverImageView(images: coverImages)
                    .frame(height:300)
                    .listRowInsets(.none)
            }
            .navigationBarTitle("Real Africa")
        }
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseView()
    }
}
