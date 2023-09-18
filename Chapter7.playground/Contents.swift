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
            print("\(player) \(score)")
        }
    }
}
