//
//  StoriesView.swift
//  SwiftGram
//
//  Created by Jay on 8/1/23.
//

import SwiftUI

public struct StoriesView: View {

    public init() { }

    public var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<100) { index in
                    if index % 3 == 0 {
                        StorySelectComponent(storyStatus: .new, userImage: "person.circle.fill", userName: "heyjaywilson")
                                .padding(.trailing, 8)
                    } else if index % 3 == 1 {
                        StorySelectComponent(storyStatus: .seen, userImage: "person.circle.fill", userName: "thorgi")
                            .padding(.trailing, 8)
                    } else {
                        StorySelectComponent(storyStatus: .closeFriends, userImage: "person.circle.fill", userName: "dobby")
                            .padding(.trailing, 8)
                    }
                }
            }
        }
        .contentMargins(8, for: .scrollContent)
    }
}

#Preview {
    StoriesView()
}
