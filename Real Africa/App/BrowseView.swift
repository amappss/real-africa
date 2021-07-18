//
//  BrowseView.swift
//  Real Africa
//
//  Created by Arsalan majlesi on 7/15/21.
//

import SwiftUI

enum GridType : Int{
    case twoGrid = 2
    case     threeGrid = 3
     case    oneGrid = 1
}
struct BrowseView: View {
    @State private var isGridActive = false
    @State var gridType :GridType = .twoGrid
    @State var gridImageName = "square.grid.2x2"
    let coverImages = COVER_IMAGES
    let animals = ANIMALS
    
    let impact = UIImpactFeedbackGenerator(style: .medium)
    
    func switchGrid() {
        if(isGridActive == false){
            isGridActive = true
            gridType = .twoGrid
            gridImageName = "square.grid.3x2"
            return
        }
        switch gridType {
        case .twoGrid :
                gridType = .threeGrid
            gridImageName = "rectangle.grid.1x2"
        case .threeGrid :
            gridType = .oneGrid
            gridImageName = "square.grid.2x2"
        default :
            gridType = .twoGrid
            gridImageName = "square.grid.3x2"
        }
        impact.impactOccurred()
    }
    
    var body: some View {
        NavigationView {
            Group{
                if !isGridActive {
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
                } else {
                    BrowseViewGrid(gridLayoutColumns: gridType.rawValue)
                        .padding()
                }
            }
            .navigationBarTitle("Real Africa")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    HStack {
                        Button(action:{
                            isGridActive = false
                            impact.impactOccurred()
                        }){
                            Image(systemName:"square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridActive ? .primary: .accentColor )
                        }
                        
                        Button(action:{
                            switchGrid()
                        }){
                            Image(systemName:gridImageName)
                                .font(.title2)
                                .foregroundColor(
                                    isGridActive ?
                                        .accentColor : .primary
                                )
                        }
                        
                    }
                }
            }
        }
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseView()
    }
}
