//
//  BrowseView.swift
//  Real Africa
//
//  Created by Arsalan majlesi on 7/15/21.
//

import SwiftUI

struct BrowseView: View {
    let coverImages = COVER_IMAGES
    let animals = ANIMALS
    
    var body: some View {
        NavigationView {
            List {
                CoverImageView(images: coverImages)
                    .frame(height:300)
                    .listRowInsets(.none)
                ForEach(animals) { animal in
                    NavigationLink(destination:AnimalDetailView(animal: animal)){
                        AnimalListView(animal: animal)
                    }
                }
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
