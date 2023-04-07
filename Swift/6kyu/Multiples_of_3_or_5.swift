func solution(_ num: Int) -> Int {
  if num < 0 {
    return 0
  }
  var a: Set<Int> = Set<Int>()

  for i in 0..<num {
      a.insert((i % 3 == 0 || i % 5 == 0) ? i : 0)
  }

  var result = 0

  for i in a {
      result += i
  }

  return result
}