//
//  GalleryView.swift
//  Real Africa
//
//  Created by Arsalan majlesi on 7/15/21.
//

import SwiftUI

struct GalleryView: View {
    @State private var selectedImg = ANIMALS[0].image
    @State private var gridColumns: Float = 3.0
    
    @State var gridLayout: [GridItem] = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
        
    
    func gridSwitched(){
        gridLayout = Array(repeating: GridItem(.flexible()), count: Int(gridColumns))
    }
    
    var body: some View {
        ScrollView(){
            
            VStack(spacing:15) {
                Image(selectedImg)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white,lineWidth: 3))
                
                Slider(value: $gridColumns, in: 2...4,step:1) {
                    
                }.onChange(of: gridColumns, perform: { value in
                    gridSwitched()
                })
                
                
                LazyVGrid(columns:gridLayout,spacing:20) {
                    ForEach(ANIMALS) { animal in
                        Image(animal.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white,lineWidth: 1))
                            .onTapGesture {
                                selectedImg = animal.image
                            }
                    }
                }
            }
        }
        .frame(width: .infinity, height: .infinity, alignment: .center)
        .background(GalleryAnimationView())
        .ignoresSafeArea(edges: .top)
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
