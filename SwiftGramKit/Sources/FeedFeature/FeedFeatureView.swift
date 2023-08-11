//
//  FeedFeatureView.swift
//
//
//  Created by Jay on 8/11/23.
//

import SwiftUI

public struct FeedFeatureView: View {
    public init() { }

    public var body: some View {
        VStack {
            PostView()
            PostView()
        }
    }
}

#Preview {
    FeedFeatureView()
}
