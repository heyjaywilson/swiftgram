//
//  PostView.swift
//
//
//  Created by Jay on 8/11/23.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(width: 40)
                VStack {
                    Text("Username")
                        .font(.headline)
                    Text("Location")
                }
                Spacer()
                Button {
                    print("open menu")
                } label: {
                    Image(systemName: "ellipsis")
                }
            }
        }
    }
}

#Preview {
    PostView()
}
