//
//  MapView.swift
//  Real Africa
//
//  Created by Arsalan majlesi on 7/15/21.
//

import SwiftUI
import MapKit
struct MapView: View {
    
    @State private var region = AFRICA_REGION
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: LOCATIONS) { location in
            MapAnnotation(coordinate:location.coordinate){
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width:32,height:32)
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
