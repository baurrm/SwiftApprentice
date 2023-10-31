import Foundation

let cafeNormal = "café"
let cafeCombining = "cafe\u{0301}" //adding unicode 0301 which is accent on top of e

//count characters
cafeNormal.count
cafeCombining.count

//counts the unicode
cafeNormal.unicodeScalars.count
cafeCombining.unicodeScalars.count

for codePoint in cafeNormal.unicodeScalars {
    print(codePoint.value)
}

for codePoint in cafeCombining.unicodeScalars {
    print(codePoint.value)
}

//first find index and then access it by subscripting
let firstIndex = cafeCombining.startIndex
let firstChar = cafeCombining[firstIndex]

let lastIndex = cafeCombining.index(before: cafeCombining.endIndex)
let lastChar = cafeCombining[lastIndex]

let forthIndex = cafeCombining.index(firstIndex, offsetBy: 3)
let forthChar = cafeCombining[forthIndex]

forthChar.unicodeScalars.count
forthChar.unicodeScalars.forEach { codePoint in
    print(codePoint.value)
}

let equal = cafeNormal == cafeCombining

let name = "Matt"
let backwardsName = name.reversed() //gives a Reversed Collestion and save memory
let backwardsNameString = String(backwardsName)

let raw1 = #"Raw "No Escaping" \(no interpolation!). Use all the\ you want!"#
print(raw1)

let raw2 = ##"Aren’t we "# clever"##
print(raw2)

let can = "can do that too"
let raw3 = #"Yes we \#(can)!"#
print(raw3)

let fullName = "Matt Galloway"
let spaceIndex = fullName.firstIndex(of: " ")!
let firstName = fullName[..<spaceIndex]
let lastName = fullName[fullName.index(after: spaceIndex)...]
let lastNameString = String(lastName)

let hexDigit: Character = "d"
hexDigit.isHexDigit

let thaiNine: Character = "๙" 
thaiNine.wholeNumberValue

let char = "\u{00bd}"
for i in char.utf8 {
    print(i)
}

let characters = "+\u{00bd}\u{21e8}\u{1f643}"

for i in characters.utf8 {
    print("\(i) : \(String(i, radix: 2))")
}

for i in characters.utf16 {
  print("\(i) : \(String(i, radix: 2))")
}

let arrowIndex = characters.firstIndex(of: "\u{21e8}")!
characters[arrowIndex]


if let unicodeScalarsIndex = arrowIndex.samePosition(in:
characters.unicodeScalars) {
  characters.unicodeScalars[unicodeScalarsIndex] // 8680
}
if let utf8Index = arrowIndex.samePosition(in: characters.utf8)
{
  characters.utf8[utf8Index] // 226
}
if let utf16Index = arrowIndex.samePosition(in:
characters.utf16) {
  characters.utf16[utf16Index] // 8680
}
