//
//  BrowseViewGrid.swift
//  Real Africa
//
//  Created by Arsalan majlesi on 7/17/21.
//

import SwiftUI

struct BrowseViewGrid: View {
    var gridLayoutColumns : Int
    @State var gridLayout : [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    
    func getCurrentGridLayout() -> [GridItem] {
        return Array(repeating: GridItem.init(.flexible()), count: gridLayoutColumns)
    }
    var body: some View {
        ScrollView {
            LazyVGrid(columns:getCurrentGridLayout(),spacing:10) {
                ForEach(ANIMALS) { animal in
                    NavigationLink(destination:AnimalDetailView(animal: animal)){
                        Image(animal.image)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(12)
                    }
                }
        }
        }
        .onAppear(){
            gridLayout = Array(repeating: GridItem(.flexible()), count: gridLayoutColumns)
        }
    }
}

struct BrowseViewGrid_Previews: PreviewProvider {
    static var previews: some View {
        BrowseViewGrid(gridLayoutColumns: 3)
    }
}
