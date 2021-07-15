//
//  BrowseView.swift
//  Real Africa
//
//  Created by Arsalan majlesi on 7/15/21.
//

import SwiftUI

struct BrowseView: View {
    let coverImages: [CoverImage] = Bundle.main.decode(fromFile: "covers.json")
    let animals: [Animal] = Bundle.main.decode(fromFile: "animals.json")
    
    var body: some View {
        NavigationView {
            List {
                CoverImageView(images: coverImages)
                    .frame(height:300)
                    .listRowInsets(.none)
                ForEach(animals) { animal in
                    AnimalListView(animal: animal)
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
