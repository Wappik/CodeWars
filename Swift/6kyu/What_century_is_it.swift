func whatCentury(_ year: String) -> String {
    let century = Int(year)! / 100  + ((Int(year)! % 100 == 0) ? 0 : 1)
    var result = ""
    if century > 3 && century < 21 {
        result = "\(century)th"
    }
    else {
        result = "\(century)"
        switch (century % 10) {
        case 1: result += "st"
        case 2: result += "nd"
        case 3: result += "rd"
        default:
            result += "th"
        }
    }

    return result
}