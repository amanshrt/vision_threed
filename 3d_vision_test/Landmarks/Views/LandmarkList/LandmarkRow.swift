//
//  LandmarkRow.swift
//  3d_vision_test
//
//  Created by Subash Shrestha on 20.05.24.
//

import SwiftUI


struct LandmarkRow: View {
    var landmark: Landmark


    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)


            Spacer()
        }
    }
}


#Preview {
    if let landMarks: [Landmark] = try? ResourceLoader.load("landmarkData.json") {
        Group {
            LandmarkRow(landmark: landMarks[1])
        }
    } else {
        Text("No file found")
    }
    
}
