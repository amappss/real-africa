//
//  BundleExt.swift
//  Real Africa
//
//  Created by Arsalan majlesi on 7/15/21.
//

import Foundation

extension Bundle {

    func decode(fromFile file:String) -> [CoverImage]{
        guard let url = url(forResource: file, withExtension: nil) else {
            fatalError("Error while locating \(file)")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Error while loading \(url)")
        }
        
        let decoder = JSONDecoder()
        
        guard let parsedData = try? decoder.decode([CoverImage].self, from: data) else {
            fatalError("Error while parsing \(data)")
        }
        
        return parsedData
    }
}
