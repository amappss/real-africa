//
//  AnimalDetailView.swift
//  Real Africa
//
//  Created by Arsalan majlesi on 7/15/21.
//

import SwiftUI

struct AnimalDetailView: View {
    var animal:Animal
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(spacing:25) {
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                    
            
                Text(animal.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                .background(
                    Color.accentColor
                        .frame(height:6)
                        .offset( y: 24)
                )
                Text(animal.headline)
                    .font(.headline)
                    .foregroundColor(.accentColor)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)
                AnimalDetailHeadline(title: "Wildness in Pictures",imageName: "photo.on.rectangle.angled")
                AnimalDetailGallery(animal: animal)
            }
        }
        .navigationBarTitle("Learn about \(animal.name)",displayMode: .inline)

    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    static var animals: [Animal] = Bundle.main.decode(fromFile: "animals.json")
    static var previews: some View {
        NavigationView{
            AnimalDetailView(animal: animals[0])
        }
    }
}
