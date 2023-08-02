//
//  StoriesView.swift
//  SwiftGram
//
//  Created by Jay on 8/1/23.
//

import SwiftUI

public struct StoriesView: View {
    private let imageWidth: CGFloat = 64

    public init() { }

    public var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<100) { index in
                    Button {
                        print("Do something with this photo")
                    } label: {
                        VStack(spacing: 8) {
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: imageWidth)
                                .padding(.all, 4)
                                .overlay {
                                    Circle()
                                        .fill(Color.clear)
                                        .stroke(.black, style: .init(lineWidth: 1))
                                }
                            Text("heyjaywilson")
                                .font(.footnote)
                                .lineLimit(1)
                                .truncationMode(.tail)
                        }
                    }
                    .frame(width: imageWidth+4)
                    .padding(.trailing, 8)
                }
            }
        }
        .contentMargins(8, for: .scrollContent)
    }
}

#Preview {
    StoriesView()
}
