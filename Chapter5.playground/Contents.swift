//Mini-exercises

//1. Write a function named printFullName that takes two strings called firstName and lastName. The function should print out the full name defined as firstName + " " + lastName. Use it to print out your own full name.
func printFullName(firstName: String, lastName: String) {
    print("\(firstName + " " + lastName)")
}
printFullName(firstName: "Bauyrzhan", lastName: "Marat")

//2. Change the declaration of printFullName to have no external name for either parameter.
func printFullName(_ firstName: String, _ lastName: String) {
    print("\(firstName + " " + lastName)")
}
printFullName("Bauyrzhan", "Marat")

//3. Write a function named calculateFullName that returns the full name as a string. Use it to store your own full name in a constant.
func calculateFullName() -> String {
    return("Bauyrzhan Marat")
}
let fullName: String = calculateFullName()
print(fullName)

//4. Change calculateFullName to return a tuple containing both the full name and the length of the name. You can find a string’s length by using the count property. Use this function to determine the length of your own full name.
func calculateFullName(firstName: String, lastName: String) -> (fullName: String, length: Int) {
    let fullName = ("\(firstName + " " + lastName)")
    let length = fullName.count
    return(fullName, length)
}
calculateFullName(firstName: "Bauyrzhan", lastName: "Marat")


// Challenges

//Challenge 1: Looping with stride functions
//Looping using Stride function
for number in stride(from: 10.0, through: 9.0, by: -0.1) {
    print(number)
}

//Challenge 2: It’s prime time

/// Checks if number is divisible by divisor
/// - Parameters:
///   - number: Number which gets passed in
///   - divisor: Divisor which gets passed in
/// - Returns: True if Divisible | False if Not
func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
    return number % divisor == 0 ? true:false
}
isNumberDivisible(16, by: 5)

/// //Checks if number is Prime
/// - Parameter number: Number which gets passed in
/// - Returns: True if number is Prime | False if Not
func isPrime(_ number: Int) -> Bool {
    if number > 1 {
        var counter = 0
        for index in 1...number {
            if isNumberDivisible(number, by: index) == true {
                counter += 1
            }
        }
        return counter > 2 ? false:true
    } else {
        return false
    }
}

isPrime(6)

//Challenge 3: Recursive functions
func fibonacci(_ number: Int) -> Int {
    var sum = 0
    if number < 0 {
        return 0
    } else if number == 1 || number == 2 {
        return 1
    } else {
        sum = fibonacci(number - 1) + fibonacci(number - 2)
        return sum
    }
}

fibonacci(1)  // = 1
fibonacci(2)  // = 1
fibonacci(3)  // = 2
fibonacci(4)  // = 3
fibonacci(5)  // = 5
fibonacci(10) // = 55
