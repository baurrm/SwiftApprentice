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
var arrayInt = [1,2,3,4,5,2,1,3,4,5]

func removingOnce(_ item: Int, from array: [Int]) -> [Int] {
    if let index = array.firstIndex(of: item) {
        array.remove(at: index)
    }
    return array
}

removingOnce(7, from: arrayInt)
