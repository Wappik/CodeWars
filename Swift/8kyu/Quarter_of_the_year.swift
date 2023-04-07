func quarter(of month: Int) -> Int {
  return month % 3 == 0 ? month / 3 : month / 3 + 1
}