func longestConsec(_ strarr: [String], _ k: Int) -> String {


    if k > strarr.count || k <= 0 || strarr.count == 0 {
        return ""
    }
    else {
        var lst: [String] = [String]()

        for i in 0..<(strarr.count - k + 1) {
            var s = ""
            for j in 0..<k {
                s += strarr[i + j]
            }
            lst.append(s)
        }
        var result = ""
        for i in lst {
            if result.count < i.count {
                result = i
            }
        }
        return result
    }

}