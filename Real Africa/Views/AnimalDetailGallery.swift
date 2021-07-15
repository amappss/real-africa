//
//  AnimalDetailGallery.swift
//  Real Africa
//
//  Created by Arsalan majlesi on 7/15/21.
//

import SwiftUI

struct AnimalDetailGallery: View {
    let animal: Animal
    var body: some View {
        ScrollView(.horizontal,showsIndicators:false) {
            HStack(spacing:10){
                ForEach(animal.gallery,id:\.self) { img in
                Image(img)
                    .resizable()
                    .scaledToFit()
                    .frame(height:200)
                    .cornerRadius(8)
                }
            }
        }
    }
}

struct AnimalDetailGallery_Previews: PreviewProvider {
    static var animals : [Animal] = Bundle.main.decode(fromFile: "animals.json")
    static var previews: some View {
        AnimalDetailGallery(animal: animals[0])
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
