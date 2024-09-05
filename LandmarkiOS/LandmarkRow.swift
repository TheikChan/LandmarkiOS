//
//  LandmarkRow.swift
//  LandmarkiOS
//
//  Created by Theik Chan on 04/09/2024.
//

import SwiftUI

struct LandmarkRow: View {
    
    @Binding var landmark: Landmark
    
    var body: some View {
        Text(landmark.name)
    }
}
