//
//  Landmark.swift
//  LandmarkiOS
//
//  Created by Theik Chan on 05/09/2024.
//

import Foundation

struct Landmark {
    var name: String
    var image: String
    
    static var landmarks: [Landmark] {
        [.init(name: "Landmark 1", image: ""), .init(name: "Landmark 2", image: "")]
    }
}

extension Landmark: Hashable { }
