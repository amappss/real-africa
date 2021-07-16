//
//  Data.swift
//  Real Africa
//
//  Created by Arsalan majlesi on 7/15/21.
//

import Foundation
import MapKit

let COVER_IMAGES: [CoverImage] = Bundle.main.decode(fromFile: "covers.json")
let ANIMALS: [Animal] = Bundle.main.decode(fromFile: "animals.json")
let VIDEOS: [Video] = Bundle.main.decode(fromFile: "videos.json")
let LOCATIONS: [Location] = Bundle.main.decode(fromFile: "locations.json")

let AFRICA_REGION = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600284, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
