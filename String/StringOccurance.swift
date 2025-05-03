import Foundation

let array = ["this is swift swift "]
let text = array.joined(separator: " ")
let word = text
            .lowercased()
            .components(separatedBy: CharacterSet.alphanumerics.inverted)
            .filter{!$0.isEmpty}

var wordOccurance: [String:Int] = [:]

for i in word {
    wordOccurance[i, default: 0] += 1
}

print(wordOccurance)