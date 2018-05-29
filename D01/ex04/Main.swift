for col in Color.allColors{
    print("\(col): \(col.rawValue) | type = ",type(of: col.rawValue));
    // print(type(of: col.rawValue))
}

for val in Value.allValues{
    print("\(val): \(val.rawValue) | type = ",type(of: val.rawValue))
}

print("\u{001B}[1;32m\n- Cards\u{001B}[0m\n");
let card1 = Card(c : Color.Spade, v : Value.Ace);
let card2 = Card(c : Color.Spade, v : Value.Ace);
let card3 = Card(c : Color.Diamond, v : Value.Two);
print("   Expected   |   Returned");
print("--------------|--------------")
print("  (1, Spade)  |  \(card1)");
print("  (1, Spade)  |  \(card2)");
print(" (2, Diamond) | \(card3)");
print("     true     |     \(card1.isEqual(object: card2))");
print("    false     |     \(card1.isEqual(object: card3))");
print("     true     |     \(card1 == card2)");
print("    false     |     \(card1 == card3)");

print("\u{001B}[1;32m\n- Deck\u{001B}[0m\n");
print("\(Deck.allSpades.count) Spades   : \(Deck.allSpades)");
print("\(Deck.allClubs.count) Clubs    : \(Deck.allClubs)");
print("\(Deck.allDiamonds.count) Diamonds : \(Deck.allDiamonds)");
print("\(Deck.allHearts.count) Hearts   : \(Deck.allHearts)\n");
print("\(Deck.allCards.count) Cards    : \(Deck.allCards)");


print("\u{001B}[1;32m\n- Shuffle\u{001B}[0m\n");
var deck = Deck.allCards;

print("original : \(deck)\n");
for _ in deck {
    deck.shuffle();
    print("shuffle  : \(deck)");
}

print("\u{001B}[1;32m\n- Board\u{001B}[0m\n");

var sortedDeck = Deck(sorted: true);
var shuffledDeck = Deck(sorted: false);

print("sorted Deck   : \(sortedDeck)\n");
print("shuffled Deck : \(shuffledDeck)\n");

var tmp: Card;

for _ in 1...3 {
    print("will be drawed    : \(shuffledDeck.cards[0])");
    tmp = shuffledDeck.draw()!;
    print("have been drawed  : \(tmp)");
    print("moved now in outs : \(shuffledDeck.outs[shuffledDeck.outs.count - 1])");
    print("is in cards ?     : \(shuffledDeck.cards.contains(tmp))");
    shuffledDeck.fold(c: tmp);
    print("moved in discards : \(shuffledDeck.discards[shuffledDeck.discards.count - 1])");
    print("is in outs ?      : \(shuffledDeck.outs.contains(tmp))\n");
}
