//: Playground - noun: a place where people can play

import Foundation

func emojicode(word:String) -> String {
    switch word.lowercased(){
    case "beer":
        return "\u{1F37A}"
    case "television", "tv":
        return "\u{1F4FA}"
    case "chips":
        return "\u{1F35F}"
    case "angry":
        return "\u{1F621}"
    default:
        return word
    }
}


func emojiate(str: String) -> String {
    var word: String = ""
    var result: String = ""
    
    for char: Character in str {
        if(String(char) >= "A" && String(char) <= "z") {
            word.append(char)
        } else {
            result += emojicode(word: word)
            result.append(char)
            word = ""
        }
    }
    result += emojicode(word: word)
    return result
}

let myString = "No TV, no beer and chips makes Homer angry."

let emojiString = emojiate(str: myString);
print(emojiString)


