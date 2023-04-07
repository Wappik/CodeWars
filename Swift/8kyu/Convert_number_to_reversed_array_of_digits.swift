func digitize(_ num:Int) -> [Int] {
    var result: [Int] = [Int]()
    if num == 0 {
        result.append(0)
    }
    else {
        var n = num
        while n > 0 {
            result.append(n % 10)
            n /= 10
        }
    }
    return result
}