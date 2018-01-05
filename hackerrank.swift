//This should read the first line but nothing else
// Creates an array of the parameters, currently a string but can cast
var parameters = readLine(strippingNewline: false)!.components(separatedBy: " ")
var secondLine = readLine(strippingNewline: false)!

func readString() -> String {
    return secondLine.trimmingCharacters(in: NSCharacterSet.whitespaces)
//    return String(data: readData(), encoding:NSUTF8StringEncoding)!.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
}

func getParameter(with parameterNumber: Int) -> Int {
    if parameterNumber >= parameters.count {
        print("Parameter doesn\'t exist")
        return 0
    } else {
        return Int(parameters[parameterNumber].trimmingCharacters(in: .whitespacesAndNewlines))!
    }
}

func readArrayOfStrings() -> Array<String> {
    return readString().components(separatedBy:NSCharacterSet.whitespacesAndNewlines)
}

func readArrayOfInts() -> Array<Int> {
    return readArrayOfStrings().map {
        (str: String) -> Int in
        return Int(str)!
    }
}

func readArrayOfDoubles() -> Array<Double> {
    return readArrayOfStrings().map {
        (str: String) -> Double in
        return Double(str)!
    }
}

//let numVars = readLine(strippingNewline: true)!
//let rotations = readLine(strippingNewline: true)!

//let string1 = readLine()!
//let vars: [String] = string1.components(separatedBy:" ")
//let numVars = Int(vars[0])!
//let numRotations = Int(vars[1])!
//let inputVals = readLine(strippingNewline: true)!
//print(inputVals)
