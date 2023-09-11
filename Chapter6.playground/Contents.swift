//Mini-exercises

//1. Make an optional String called myFavoriteSong. If you have a favorite song, set it to a string representing that song. If you have more than one favorite song or no favorite, set the optional to nil.
let myFavouriteSong: String? = "Maluma - 11pm"

//2. Create a constant called parsedInt and set it equal to Int("10"), which tries to parse the string 10 and convert it to an Int. Check the type of parsedInt using Option-Click. Why is it an optional?
let parsedInt = Int("10")

//3. Change the string being parsed in the above exercise to a non-integer (try dog, for example). What does parsedInt equal now?
let anotherParsedInt = Int("dog")

//Mini-exercises

//1. Using your myFavoriteSong variable from earlier, use optional binding to check if it contains a value. If it does, print out the value. If it doesn’t, print "I don’t have a favorite song."
if let myFavouriteSong = myFavouriteSong {
    print(myFavouriteSong)
} else {
    print("I don't have a favourite song.")
}

//2. Change myFavoriteSong to the opposite of what it is now. If it’s nil, set it to a string; if it’s a string, set it to nil. Observe how your printed result changes.
func guardMyCastle(name: String?) {
    guard let castleName = name else {
        print("No castle!")
        return
    }
    print("Your castle called \(castleName) was guarded!")
}
guardMyCastle(name: nil)


//Challenge 2: Divide and conquer

//First, create a function that returns the number of times an integer can be divided by another integer without a remainder. The function should return nil if the division doesn’t produce a whole number. Name the function divideIfWhole.
func divideIfWhole(number: Int, divider: Int) -> Int? {
    if number % divider == 0 {
        return number / divider
    } else {
        return nil
    }
}

//Then, write code that tries to unwrap the optional result of the function. There should be two cases: upon success, print "Yep, it divides \(answer) times", and upon failure, print "Not divisible :[".
let result = divideIfWhole(number: 10, divider: 2)

//if let result = result {
//    print("Yep, it divides \(result) times")
//} else {
//    print("Not divisible :[")
//}

//Challenge 3: Refactor and reduce

//The code you wrote in the last challenge used if statements. In this challenge, refactor that code to use nil coalescing instead. This time, make it print "It divides X times" in all cases, but if the division doesn’t result in a whole number, then X should be 0.
let result2 = divideIfWhole(number:10, divider: 3) ?? 0
print("It divides \(result2) times.")

//Challenge 4: Nested optionals

//Consider the following nested optional — it corresponds to a number inside a box inside a box inside a box.
let number: Int??? = 10

//If you print number you get the following:
print(number)
// Optional(Optional(Optional(10)))
print(number!)
// Optional(Optional(10))

//Do the following:
//1. Fully force unwrap and print number.
print(number!!!)

//2. Optionally bind and print number with if let.
if let number = number {
    print(number!!)
}
//3. Write a function printNumber(_ number: Int???) that uses guard to print the number only if it is bound.
func printNumber(_ number: Int???) {
    guard let number = number else {
        return
    }
    print(number!!)
}
printNumber(number)
