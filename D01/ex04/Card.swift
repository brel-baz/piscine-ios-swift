import Foundation

class Card: NSObject {
    var color: Color;
    var value: Value;
    
    init(c: Color, v: Value) {
        self.color = c;
        self.value = v;
    }
    
    override var description: String{
        return ("(\(value.rawValue), \(color.rawValue))");
    }
    
    func isEqual(object: Card)-> Bool {
        if object.color == self.color && object.value == self.value {
            return (true);
        }
        else {
            return (false);
        }
    }
    static func ==(card1: Card, card2: Card)-> Bool{
        if card1.color == card2.color && card1.value == card2.value {
            return (true);
        }
        else {
            return (false);
        }
    }
}
