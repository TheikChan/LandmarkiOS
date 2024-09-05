//
//  LandmarkViewModel.swift
//  LandmarkiOS
//
//  Created by Theik Chan on 04/09/2024.
//

import Foundation
import Combine

class LandmarkViewModel: ObservableObject {
    
    @Published var landmarks: [Landmark]
    
    init(landmarks: [Landmark]) {
        self.landmarks = landmarks
    }
}
