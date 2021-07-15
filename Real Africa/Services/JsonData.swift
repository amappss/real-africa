//
//  JsonData.swift
//  Real Africa
//
//  Created by Arsalan majlesi on 7/15/21.
//

import Foundation
let COVER_IMAGES: [CoverImage] = Bundle.main.decode(fromFile: "covers.json")
let ANIMALS: [Animal] = Bundle.main.decode(fromFile: "animals.json")
let VIDEOS: [Video] = Bundle.main.decode(fromFile: "videos.json")
