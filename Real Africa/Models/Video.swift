//
//  Video.swift
//  Real Africa
//
//  Created by Arsalan majlesi on 7/15/21.
//

import Foundation

struct Video: Codable,Identifiable {
    var id: String
    var name: String
    var headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
