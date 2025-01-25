func myFunc(param: Int) -> Int {
    guard param > 0 else { return 0 }
    return param + 1
}

let result = myFunc(param: -1)
print(result) // Output: 0

//Alternative Solution (More explicit error handling):
func myFuncWithExplicitErrorHandling(param: Int) -> Int? {
    if param <= 0 {
        return nil // Or throw an error
    }
    return param + 1
}

 if let safeResult = myFuncWithExplicitErrorHandling(param: -1) {
    print("Result:",safeResult)
} else {
    print("Error: Input must be positive") //Handles the case gracefully
}

 if let safeResult = myFuncWithExplicitErrorHandling(param: 5) {
    print("Result:",safeResult)
} else {
    print("Error: Input must be positive")
}