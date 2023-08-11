//
//  StorySelectComponent.swift
//
//
//  Created by Jay on 8/11/23.
//

import SwiftUI

struct StorySelectComponent: View {
    private let imageWidth: CGFloat = 64

    var storyStatus: StoryStatusType = .new
    // TODO: Replace with data at some point...
    var userImage: String
    var userName: String

    var body: some View {
        Button {
            print("Open story")
        } label: {
            VStack(spacing: 8) {
                Image(systemName: userImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: imageWidth)
                    .padding(.all, 4)
                    .overlay {
                        Circle()
                            .fill(Color.clear)
                            .stroke(setColorForStory(), style: .init(lineWidth: 1.5))
                    }
                Text(userName)
                    .font(.footnote)
                    .lineLimit(1)
                    .truncationMode(.tail)
            }
        }
        .frame(width: imageWidth+4)

    }

    func setColorForStory() -> LinearGradient {
        switch storyStatus {
            case .new:
                LinearGradient(colors: [.red, .orange, .purple], startPoint: .topLeading, endPoint: .bottomTrailing)
            case .seen:
                LinearGradient(colors: [.gray, .secondary], startPoint: .topLeading, endPoint: .bottomTrailing)
            case .isUsers:
                LinearGradient(colors: [.clear], startPoint: .topLeading, endPoint: .bottomTrailing)
            case .closeFriends:
                LinearGradient(colors: [.green], startPoint: .topLeading, endPoint: .bottomTrailing)
        }
    }
}

#Preview {
    StorySelectComponent(userImage: "person.circle.fill", userName: "heyjaywilson")
}
