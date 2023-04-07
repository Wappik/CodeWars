func findUniq(_ arr: [Int]) -> Int {
    let sortedArr = arr.sorted()
    if sortedArr[0] == sortedArr[1] {
        return sortedArr[sortedArr.count - 1]
    }
    else {
        return sortedArr[0]
    }
}