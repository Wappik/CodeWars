func sumMix(_ arr: [Any]) -> Int {
    var result = 0

    for value in arr {
        if type(of: value) == Int.self {
            result += value as! Int
        }
        else {
            let valueString = value as! String
            result += Int(valueString) ?? 0
        }
    }

    return result
}