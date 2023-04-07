func beggars(_ values: [Int], _ n: Int) -> [Int] {
    if values.count < n {
        var result = values
        for _ in values.count..<n {
            result.append(0)
        }
        return result
    }
    else if n == 0 {
        return []
    }
    else {
        var result: [Int] = [Int]()

        for _ in 0..<n {
            result.append(0)
        }

        for i in 0..<values.count {
            result[i % n] += values[i]
        }

        return result
    }
}