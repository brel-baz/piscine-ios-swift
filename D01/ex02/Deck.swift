class Deck: NSObject {
    static let allHearts: [Card] = Value.allValues.map{Card(c: Color.Heart, v: $0)};
    static let allSpades: [Card] = Value.allValues.map{Card(c: Color.Spade, v: $0)};
    static let allDiamonds: [Card] = Value.allValues.map{Card(c: Color.Diamond, v: $0)};
    static let allClubs: [Card] = Value.allValues.map{Card(c: Color.Club, v: $0)};
}
