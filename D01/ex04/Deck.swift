import Foundation

class Deck: NSObject {
    static let allHearts: [Card] = Value.allValues.map{Card(c: Color.Heart, v: $0)};
    static let allSpades: [Card] = Value.allValues.map{Card(c: Color.Spade, v: $0)};
    static let allDiamonds: [Card] = Value.allValues.map{Card(c: Color.Diamond, v: $0)};
    static let allClubs: [Card] = Value.allValues.map{Card(c: Color.Club, v: $0)};
    static let allCards: [Card] = allHearts + allSpades + allDiamonds + allClubs;
    
    var cards: [Card];
    var discards: [Card];
    var outs: [Card];
    
    init(sorted: Bool){
        self.cards = Deck.allCards;
        self.discards = [];
        self.outs = [];
        if !sorted {
            self.cards.shuffle()
        }
    }
    
    override var description: String{
        return ("\(cards)");
    }
        
    func draw()-> Card? {
        var card: Card;
        if self.cards.count == 0{
            return (nil);
        }
        card = self.cards[0];
        self.outs.append(card);
        self.cards.removeFirst();
        return (card);
    }
    
    func fold(c: Card){
        if let i = self.outs.index(of: c) {
            self.discards.append(c);
            self.outs.remove(at: i);
        }
    }
}

extension Array {
    mutating func shuffle() {
        var last: Int;
        var i: Int;
        
        last = self.count - 1;
        while last > 0 {
            i = Int(arc4random_uniform(UInt32(last)));
            self.swapAt(last, i);
            last -= 1;
        }
    }
}
