//
//  LandmarkList.swift
//  LandmarkiOS
//
//  Created by Theik Chan on 04/09/2024.
//

import SwiftUI

struct LandmarkList: View {
    
    @StateObject var landmarkViewModel: LandmarkViewModel
    
    var body: some View {
        List {
            
            ForEach($landmarkViewModel.landmarks, id: \.self) { landmark in
                LandmarkRow(landmark: landmark)
            }
            
            Button(action: {
                addLandmark()
            }, label: {
                Text("Add New Landmark")
            })
        }
    }
    
    func addLandmark() {
        landmarkViewModel.landmarks.append(.init(name: "New Landmark", image: ""))
    }
}

#Preview {
    LandmarkList(landmarkViewModel: LandmarkViewModel.init(landmarks: Landmark.landmarks))
}
