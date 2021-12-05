//
//  MemoriseApp.swift
//  Memorise
//
//  Created by Thomas Roff on 4/12/21.
//

import SwiftUI

@main
struct MemoriseApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
