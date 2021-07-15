//
//  AnimalListView.swift
//  Real Africa
//
//  Created by Arsalan majlesi on 7/15/21.
//

import SwiftUI

struct AnimalListView: View {
    var animal: Animal
    var body: some View {
        HStack(spacing:16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment:.leading,spacing:8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animal.headline)
                    .font(.footnote)
                    .lineLimit(2)
            }
            
        }
    }
}

struct AnimalListView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode(fromFile: "animals.json")
    static var previews: some View {
        AnimalListView(animal: animals[0])
            .previewLayout(.fixed(width: 350, height: 200))
    }
}
