//
//  SwiftGramApp.swift
//  SwiftGram
//
//  Created by Jay on 8/1/23.
//

import SwiftUI
import SwiftData
import AppCore

@main
struct SwiftGramApp: App {

    var body: some Scene {
        WindowGroup {
            AppCoreView()
        }
        .modelContainer(for: Item.self)
    }
}
