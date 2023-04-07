func sumOfPositives (_ numbers: [Int] ) -> Int {

  var sumNumbers = 0

  for i in numbers {
    if i > 0 {
      sumNumbers += i
    }
  }

    return sumNumbers
}