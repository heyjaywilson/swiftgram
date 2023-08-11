//
//  HomeView.swift
//  SwiftGram
//
//  Created by Jay on 8/1/23.
//

import SwiftUI
import StoriesFeature
import FeedFeature

public struct HomeView: View {
    public init() { }

    public var body: some View {
        NavigationStack {
            VStack {
                StoriesView()
                FeedFeatureView()
                Spacer()
            }
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Text("Taylorgram")
                        .font(.title)
                        .bold()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Notifications", systemImage: "heart") {
                        print("notifications")
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Notifications", systemImage: "message") {
                        print("notifications")
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
