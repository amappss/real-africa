//
//  Animal.swift
//  Real Africa
//
//  Created by Arsalan majlesi on 7/15/21.
//

import Foundation

struct Animal: Codable,Identifiable {
    var id: String
    var name: String
    var headline: String
    var description: String
    var link: String
    var image: String
    var gallery: [String]
    var fact: [String]
}
