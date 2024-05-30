//
//  AreaTitle.swift
//  3d_vision_test
//
//  Created by Subash Shrestha on 20.05.24.
//

import SwiftUI

struct AreaTitle: View {
    var body: some View {
        HStack() {
            VStack(alignment: .leading) {
                Text("Nepal").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(Color.green)
                Text("Kathmandu").font(.subheadline)
                Spacer()
                Text("This is the description")
                    .font(.subheadline)
                    .fontWeight(.thin)
                    .foregroundColor(Color.gray)
            }
            
            Spacer()
            GifImage()
                .padding(.bottom, -130.0)
        }
    }
}

#Preview {
    AreaTitle()
}
