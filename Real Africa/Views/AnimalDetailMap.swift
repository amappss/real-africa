//
//  AnimalDetailMap.swift
//  Real Africa
//
//  Created by Arsalan majlesi on 7/15/21.
//

import SwiftUI
import MapKit
struct AnimalDetailMap: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600284, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(
                HStack {
                    Image(systemName: "mappin.circle")
                        .foregroundColor(.white)
                        .imageScale(.large)
                    Text("Locations")
                        .foregroundColor(.accentColor)
                        .fontWeight(.bold)
                }
                .padding(.vertical,8)
                .padding(.horizontal,8)
                .background(Color(.black).opacity(0.4).cornerRadius(8))
                ,alignment: .topTrailing
            )
            .frame(height:256)
            .cornerRadius(12)
    }
}

struct AnimalDetailMap_Previews: PreviewProvider {
    static var previews: some View {
        AnimalDetailMap()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
