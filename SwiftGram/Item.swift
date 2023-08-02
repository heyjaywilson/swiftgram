//
//  Item.swift
//  SwiftGram
//
//  Created by Jay on 8/1/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
