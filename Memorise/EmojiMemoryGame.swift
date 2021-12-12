//
//  EmojiMemoryGame.swift
//  Memorise
//
//  Created by Thomas Roff on 5/12/21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card

    private static let emojis = ["🦜", "🦒", "🐏", "🐓", "🐥", "🦄", "🐁", "🦢", "🦦", "🦩", "🐬", "🐖", "🐇", "🐿", "🦔", "🦙", "🦑", "🐄", "🦏", "🕊"]

    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 20) { pairIndex in
            emojis[pairIndex]
        }
    }

    @Published private var model = createMemoryGame()

    var cards: Array<Card> {
        model.cards
    }
   
    // MARK: - Intent(s)
 
    func choose(_ card: Card) {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
}
