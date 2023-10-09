//Mini-exercises
//1. Create a constant array called names that contains some names as strings. Any names will do — make sure there are more than three. Now use reduce to create a string that is the concatenation of each name in the array.
let names = ["Baur", "Marat", "Guldana", "Aibek", "Erkebulan", "Diyana", "Dileka", "Moldir"]
let string = names.reduce("") {
    $0 + $1
}

//2. Using the same names array, first filter the array to contain only names longer than four characters, and then create the same concatenation of names as in the above exercise. (Hint: You can chain these operations together.)
let moreThanFourCharacters = names.filter {
    $0.count < 5
}.reduce("") {
    $0 + $1
}

//3. Create a constant dictionary called namesAndAges containing some names as strings mapped to ages as integers. Now use filter to create a dictionary containing only people under the age of 18.
let namesAndAges = ["Baur" : 25, "Marat" : 62, "Guldana" : 61, "Aibek" : 35, "Erkebulan" : 31, "Diyana" : 30, "Dileka" : 1, "Moldir" : 31]

namesAndAges.filter {
    $0.value < 18
}

//4. Using the same namesAndAges dictionary, filter out the adults (those 18 or older) and then use map to convert to an array containing just the names (i.e., drop the ages).
namesAndAges.filter {
    $0.value > 18
}.map {
    $0.key
}

//Challenge 1: Repeating yourself
//Your first challenge is to write a function that will run a given closure a given number of times.
//Declare the function like so:
func repeatTask(times: Int, task: () -> Void) {
    for _ in 1...times {
        task()
    }
}
repeatTask(times: 10) {
    print("Swift Apprentice is a great book!")
}
//The function should run the task closure, times number of times. Use this function
//to print "Swift Apprentice is a great book!" 10 times.

//Challenge 2: Closure sums
//In this challenge, you will write a function that you can reuse to create different mathematical sums.
//Declare the function like so:
func mathSum(length: Int, series: (Int) -> Int) -> Int {
    var result = 0
    for number in 1...length {
        result += series(number)
    }
    return result
}
mathSum(length: 10, series: { (a: Int) -> Int in
    return a * a
})
//The first parameter, length, defines the number of values to sum. The second parameter, series, is a closure that can be used to generate a series of values. series should have a parameter that is the position of the value in the series and return the value at that position.

//mathSum should calculate length number of values, starting at position 1, and return their sum.

//Use the function to find the sum of the first 10 square numbers, which equals 385. Then use the function to find the sum of the first 10 Fibonacci numbers, which equals 143. For the Fibonacci numbers, you can use the function you wrote in Chapter 5, “Functions” — or grab it from the solutions if you’re unsure your solution is correct.


//Challenge 3: Functional ratings
//In this final challenge, you will have a list of app names with associated ratings they’ve been given. Note — these are all fictional apps! Create the data dictionary like so:
let appRatings = [
  "Calendar Pro": [1, 5, 5, 4, 2, 1, 5, 4],
  "The Messenger": [5, 4, 2, 5, 4, 1, 1, 2],
  "Socialise": [2, 1, 2, 2, 1, 2, 4, 2]
]

//First, create a dictionary called averageRatings that will contain a mapping of app names to average ratings. Use forEach to iterate through the appRatings dictionary, then use reduce to calculate the average rating. Store this rating in the averageRatings dictionary. Finally, use filter and map chained together to get a list of the app names whose average rating is greater than 3.
var averageRatings: [String : Double] = [ : ]

appRatings.forEach {
  let total = $0.value.reduce(0, +) // + is a function too!
  averageRatings[$0.key] = Double(total) / Double($0.value.count)
}
averageRatings

let goodApps = averageRatings.filter {
  $0.value > 3
}.map {
  $0.key
}

