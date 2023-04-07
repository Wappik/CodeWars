func find_missing(l:[Int]) -> Int {

    let d = (l[l.count - 1] - l[0]) / l.count

    var result = 0

    for i in 0..<(l.count - 1) {
        if l[i + 1] - l[i] != d {
            result = l[i] + d
            break
        }
    }

    return result
}