//
//  _d_vision_testApp.swift
//  3d_vision_test
//
//  Created by Subash Shrestha on 18.05.24.
//

import SwiftUI

@main
struct _d_vision_testApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.windowStyle(.volumetric)

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
