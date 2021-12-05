//
//  MemoryGame.swift
//  Memorise
//
//  Created by Thomas Roff on 5/12/21.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: Array<Card>

    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        // add numberOfPairsOfCards x 2 cards to cards array
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
    }

    func choose(_ card: Card) {

    }

    struct Card {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}
