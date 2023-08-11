//
//  AppCoreView.swift
//  SwiftGram
//
//  Created by Jay on 8/1/23.
//

import SwiftUI
import HomeFeature

public enum AppTabType {
    case home, search, new, video, profile
}

public struct AppCoreView: View {
    @State private var selectedTab = AppTabType.home

    public init(selectedTab: AppTabType = AppTabType.home) {
        self.selectedTab = selectedTab
    }

    public var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem { Image(systemName: "house") }
                .tag(AppTabType.home)
            Text("Search")
                .tabItem { Image(systemName: "magnifyingglass") }
                .tag(AppTabType.home)
            Text("New")
                .tabItem { Image(systemName: "plus.square") }
                .tag(AppTabType.home)
            Text("Video")
                .tabItem { Image(systemName: "movieclapper") }
                .tag(AppTabType.home)
            Text("Profile")
                .tabItem { Image(systemName: "person.circle") }
                .tag(AppTabType.home)
        }
    }
}

#Preview {
    AppCoreView()
}
