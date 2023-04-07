func century(_ year: Int) -> Int {
    return (year % 100 == 0 ? year/100 : year/100 + 1 )
}