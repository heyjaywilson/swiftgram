//
//  SwiftGramApp.swift
//  SwiftGram
//
//  Created by Jay on 8/1/23.
//

import SwiftUI
import SwiftData

@main
struct SwiftGramApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Item.self)
    }
}
