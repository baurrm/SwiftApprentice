//Mini-exercises

//1. Create a constant named range and set it equal to a range starting at 1 and ending with 10 inclusive. Write a for loop that iterates over this range and prints the square of each number.
let range = 1...10

for number in range {
    print(number * number)
}
print("Passed✅ \n")

//2. Write a for loop to iterate over the same range as in the exercise above and print the square root of each number. You’ll need to type convert your loop constant.
import Darwin

squareRoot: for number in range {
    var squareRootNumber = sqrt(Double(number))
    if squareRootNumber.truncatingRemainder(dividingBy: 1) == 0  {
        print(Int(squareRootNumber))
    } else {
        print(squareRootNumber)
    }
}
print("Passed✅ \n")

//3. Above, you saw a for loop that iterated over only the even rows like so:
var sum = 0
for row in 0..<8 where row % 2 == 1{
  for column in 0..<8 {
    sum += row * column
  }
}
sum
//Change this to use a where clause on the first for loop to skip even rows instead of using continue. Check that the sum is 448, as in the initial example.

//Mini-exercises
//1. Write a switch statement that takes an age as an integer and prints out the life stage related to that age. You can make up the life stages or use my categorization: 0-2 years, Infant; 3-12 years, Child; 13-19 years, Teenager; 20-39, Adult; 40-60, Middle-aged; 61+, Elderly.
let age = 24

switch age {
case 0...2:
    print("Infant")
case 3...12:
    print("Child")
case 13...19:
    print("Teenager")
case 20...39:
    print("Adult")
case 40...60:
    print("Middle-aged")
case _ where age > 60:
    print("Elderly")
default:
    break
}
print("Passed✅ \n")

//2. Write a switch statement that takes a tuple containing a string and an integer. The string is a name, and the integer is an age. Use the same cases you used in the previous exercise and let syntax to print out the name followed by the life stage. For example, for myself, it would print out "Matt is an adult.".
let tuple = (name: "Bauyrzhan", age: 24)
switch tuple {
case (tuple.name, 0...2):
    print("\(tuple.name) is an infant.")
case (tuple.name, 3...12):
    print("\(tuple.name) is a child.")
case (tuple.name, 13...19):
    print("\(tuple.name) is a teenager.")
case (tuple.name, 20...39):
    print("\(tuple.name) is an adult.")
case (tuple.name, 40...60):
    print("\(tuple.name) is a middle-aged.")
case _ where tuple.age > 60:
    print("\(tuple.name) is an elderly.")
default:
    break
}
print("Passed✅ \n")
