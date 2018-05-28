for col in Color.allColors{
    print("\(col): \(col.rawValue) | type = ",type(of: col.rawValue));
   // print(type(of: col.rawValue))
}

for val in Value.allValues{
    print("\(val): \(val.rawValue) | type = ",type(of: val.rawValue))
}
