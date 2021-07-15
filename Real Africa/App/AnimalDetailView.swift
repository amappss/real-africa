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
                Group{
                    AnimalDetailHeadline(title: "Wildness in Pictures",imageName: "photo.on.rectangle.angled")
                    
                    AnimalDetailGallery(animal: animal)
                    
                }
                Group{
                    AnimalDetailHeadline(title: "Did you know?", imageName: "questionmark.circle")
                    AnimalDetailFact(animal: animal)
                    
                }
                Group{
                    AnimalDetailHeadline(title: "All about \(animal.name)", imageName: "info.circle")
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                        .padding(.horizontal,2)
                    
                }
                Group{
                    AnimalDetailHeadline(title: "National Parks", imageName: "map")
                    AnimalDetailMap()
                }
                Group{
                    AnimalDetailHeadline(title: "Learn More", imageName: "books.vertical")
                    ExternalLinkView(animal: animal)
                    
                }
                
                
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
