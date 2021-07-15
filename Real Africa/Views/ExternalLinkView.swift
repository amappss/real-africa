//
//  ExternalLinkView.swift
//  Real Africa
//
//  Created by Arsalan majlesi on 7/15/21.
//

import SwiftUI

struct ExternalLinkView: View {
    let animal:Animal
    var body: some View {
        GroupBox {
            
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                Group{
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.accentColor)
                    Link(animal.name,destination: URL(string: animal.link) ?? URL(string: "https://www.wikipedia.com")!)
                }
                .foregroundColor(.accentColor)
            }
        
            }
        
    }
}

struct ExternalLinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode(fromFile: "animals.json")
    static var previews: some View {
        ExternalLinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
