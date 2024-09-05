//
//  LandmarkiOSApp.swift
//  LandmarkiOS
//
//  Created by Theik Chan on 04/09/2024.
//

import SwiftUI
import SwiftData

@main
struct LandmarkiOSApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            LandmarkList(landmarkViewModel: LandmarkViewModel(landmarks: Landmark.landmarks) )
        }
        .modelContainer(sharedModelContainer)
    }
}
