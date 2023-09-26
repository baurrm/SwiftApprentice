import Foundation

var players = ["Anna", "Brian", "Craig", "Dan", "Donna", "Eli", "Franklin"]

let scores = [2, 2, 8, 6, 1, 2, 1]

//Mini-exercise
//Use firstIndex(of:) to determine the position of the element "Dan" in players.
players.firstIndex(of: "Bob")

//Write a for-in loop that prints the players’ names and scores.
for (indexOfPlayer, player) in players.enumerated() {
    for (indexOfScore, score) in scores.enumerated() {
       if indexOfPlayer == indexOfScore {
            print("\(player) - \(score)")
        }
    }
}

var namesAndScores = ["Anna": 2, "Brian": 2, "Craig": 8, "Donna": 6]

var bobData = ["name":"Bob", "profession":"Card player", "country":"USA"]
bobData.updateValue("CA", forKey: "state")
bobData["city"] = "San Francisco"

//Mini-exercise
//Write a function that prints a given player’s city and state.
func printCityAndState(city: String, state: String) {
    print("\(city), \(state)")
}
printCityAndState(city: bobData["city"]!, state: bobData["state"]!)

//Challenge 2: Remove the first number
//Write a function that removes the first occurrence of a given integer from an array of integers. This is the signature of the function:
var numbers = [1,2,3,4,1,2,3,4]

func removingOnce(_ item: Int, from array: inout [Int]) -> [Int] {
    if let index = array.firstIndex(of: item) {
        array.remove(at: index)
    } else {
        print("This item does not exist in the array.")
    }
    return array
}

removingOnce(4, from: &numbers)

//Challenge 3: Remove the numbers
//Write a function that removes all occurrences of a given integer from an array of integers. This is the signature of the function:
numbers = [1,2,3,4,1,2,3,4]

//func removing(_ item: Int, from array: inout [Int]) -> [Int] {
//    for (index, value) in array.enumerated() where item == value {
//        array.remove(at: index)
//        index - 1
//    }
//    return array
//}
func removing(_ item: Int, from array: [Int]) -> [Int] {
  var newArray: [Int] = []
  for candidateItem in array {
    if candidateItem != item {
      newArray.append(candidateItem)
    }
  }
  return newArray
}

removing(2, from: numbers)



//Challenge 4: Reverse an array
//Arrays have a reversed() method that returns an array holding the same elements as the original array in reverse order. Write a function that does the same thing without using reversed(). This is the signature of the function:
func reversed(_ array: [Int]) -> [Int] {
    var newArray: [Int] = []
    for item in array {
        newArray.insert(item, at: 0)
    }
    return newArray
}

reversed(numbers)

//Challenge 8: Long names
//Given a dictionary with two-letter state codes as keys, and the full state names as values, write a function that prints all the states with names longer than eight characters. For example, for the dictionary ["NY": "New York", "CA": "California"], the output would be California.
let states = ["NY": "New York", "CA": "California"]

func longerEightCharacters (_ dict: [String:String]) {
    for values in dict.values {
        if values.count > 8 {
            print(values)
        }
    }
}

longerEightCharacters(states)

//Challenge 9: Merge dictionaries
//Write a function that combines two dictionaries into one. If a certain key appears in both dictionaries, ignore the pair from the first dictionary. This is the function’s signature:
let dict2 = ["NY": "New York", "CA": "Carolina", "DW": "Dolnoslaskie", "PM": "Pomorskie"]

func merging(_ dict1: [String: String], with dict2: [String: String]) -> [String: String] {
    var mergedDict: [String:String] = [:]
    for (abbreviation, state) in dict1 {
        for (abbreviation2, state2) in dict2 {
            if abbreviation != abbreviation2 {
                mergedDict.updateValue(state, forKey: abbreviation)
                mergedDict.updateValue(state2, forKey: abbreviation2)
            } else {
                mergedDict.updateValue(state2, forKey: abbreviation2)
            }
        }
    }
    return mergedDict
}

merging(states, with: dict2)

//Challenge 10: Count the characters
//Declare a function occurrencesOfCharacters that calculates which characters occur in a string, as well as how often each of these characters occur. Return the result as a dictionary. This is the function signature:
func occurrencesOfCharacters(in text: String) -> [Character:Int] {
    var newDict: [Character:Int] = [:]
    for character in text {
        if let count = newDict[character] {
            newDict[character] = count + 1
        } else {
            newDict[character] = 1
        }
    }
    return newDict
}

occurrencesOfCharacters(in: "Bauyrzhan")

//Challenge 11: Unique values
//Write a function that returns true if all of the values of a dictionary are unique. Use a set to test uniqueness. This is the function signature:
let sampleDict = ["One" : 1, "Two" : 2, "Three" : 3]
func isInvertible(_ dictionary: [String: Int]) -> Bool {
    var setValues: Set<Int> = []
    for value in dictionary.values {
        if setValues.contains(value) {
            return false
        } else {
            setValues.insert(value)
        }
    }
    return true
}
isInvertible(sampleDict)

//Challenge 12: Removing keys and setting values to nil
//Given the dictionary:
var nameTitleLookup: [String: String?] = ["Mary": "Engineer", "Patrick": "Intern", "Ray": "Hacker"]
//Set the value of the key "Patrick" to nil and completely remove the key and value for "Ray".
nameTitleLookup.updateValue(nil, forKey: "Patrick")
nameTitleLookup.removeValue(forKey: "Ray")
print(nameTitleLookup)
