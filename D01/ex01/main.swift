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
