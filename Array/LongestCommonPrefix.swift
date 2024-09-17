
class StringPrefixSolution {
    func findLongestCommonPrefix(_ str: [String]) -> String{
        if str.isEmpty {
            return ""
        }    
 

        var prefixString = str.first!
        for item in str[1...] {
            print(!item.hasPrefix(prefixString))
           while(!item.hasPrefix(prefixString)) {
               prefixString = String(item.dropLast())
               if prefixString.isEmpty {
                   return ""
               }
           }
        }
        return prefixString
    }
}


let stringDataModel = ["Swift", "Swiiiftyyy" , "Swifter", "Swift"]
let sol = StringPrefixSolution()
let result = sol.findLongestCommonPrefix(stringDataModel)
print(result)
