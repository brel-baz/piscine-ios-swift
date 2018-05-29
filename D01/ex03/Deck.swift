import Foundation

class Deck: NSObject {
    static let allHearts: [Card] = Value.allValues.map{Card(c: Color.Heart, v: $0)};
    static let allSpades: [Card] = Value.allValues.map{Card(c: Color.Spade, v: $0)};
    static let allDiamonds: [Card] = Value.allValues.map{Card(c: Color.Diamond, v: $0)};
    static let allClubs: [Card] = Value.allValues.map{Card(c: Color.Club, v: $0)};
    static let allCards: [Card] = allHearts + allSpades + allDiamonds + allClubs;
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
