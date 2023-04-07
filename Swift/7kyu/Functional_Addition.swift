func add(_ n: Int) -> ((Int) -> Int) {
    let a = { m in
        return n + m
    };
    return a
}