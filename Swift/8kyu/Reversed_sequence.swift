func reverseSeq(n: Int) -> [Int] {
  var lst: [Int] = [Int]()

  for i in 1...n {
      lst.append(n - i + 1)
  }

  return lst
}