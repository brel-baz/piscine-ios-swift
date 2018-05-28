class Deck: NSObject {
    static let allHeart: [Card] = Value.allValues.map{Card(c: Color.Heart, v: $0)};
    static let allSpades: [Card] = Value.allValues.map{Card(c: Color.Spade, v: $0)};
    static let allDiamond: [Card] = Value.allValues.map{Card(c: Color.Diamond, v: $0)};
    static let allClub: [Card] = Value.allValues.map{Card(c: Color.Club, v: $0)};
}
