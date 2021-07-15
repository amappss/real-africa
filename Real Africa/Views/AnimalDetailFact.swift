//
//  AnimalDetailFact.swift
//  Real Africa
//
//  Created by Arsalan majlesi on 7/15/21.
//

import SwiftUI

struct AnimalDetailFact: View {
    let animal:Animal
    var body: some View {
        TabView{
            ForEach(animal.fact,id: \.self) { item in
                Text(item)
                    .padding()
            }
        }
        .frame(minHeight:100,idealHeight:130,maxHeight: 160)
        .tabViewStyle(PageTabViewStyle())
    }
}

struct AnimalDetailFact_Previews: PreviewProvider {
    static var animals: [Animal] = Bundle.main.decode(fromFile: "animals.json")
    static var previews: some View {
        AnimalDetailFact(animal: animals[0])
            .previewLayout(.sizeThatFits)
    }
}
