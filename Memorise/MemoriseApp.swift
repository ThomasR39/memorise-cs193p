//
//  MemoriseApp.swift
//  Memorise
//
//  Created by Thomas Roff on 4/12/21.
//

import SwiftUI

@main
struct MemoriseApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
