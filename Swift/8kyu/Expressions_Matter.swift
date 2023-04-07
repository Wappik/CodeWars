func expressionMatter(_ a: Int, _ b: Int, _ c: Int) -> Int {
    var lst: [Int] = [Int]()

    lst.append(a + b + c)
    lst.append(a + b * c)
    lst.append(a * b + c)
    lst.append(a * b * c)
    lst.append((a + b) * c)
    lst.append(a * (b + c))

    return lst.max() ?? Int()
}