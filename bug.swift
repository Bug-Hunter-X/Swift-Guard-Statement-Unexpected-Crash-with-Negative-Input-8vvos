func myFunc(param: Int) -> Int {
    guard param > 0 else { return 0 }
    return param + 1
}

let result = myFunc(param: -1)