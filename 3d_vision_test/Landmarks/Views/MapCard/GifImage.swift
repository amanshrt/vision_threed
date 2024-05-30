//
//  GifImage.swift
//  3d_vision_test
//
//  Created by Subash Shrestha on 19.05.24.
//

import SwiftUI

struct GifImage: View {
    var body: some View {
        Image("GifBackground")
            .renderingMode(.original)
            .aspectRatio(contentMode: .fill)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    GifImage()
}
