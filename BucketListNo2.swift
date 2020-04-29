/*
Author: Aman Shah
Date: April 19th, 2020
Descriptin: The following code has a permenant List and it compares the permenant with the teachers list. However, if they want to cahnge the list they will have to request the creator.
*/


// The following code reads the item in the file and add it to the List
import Foundation
let filePath = "./lol.txt"
let fullPath = NSString(string: filePath).expandingTildeInPath
print(filePath)
print(fullPath)
let fileContent = try NSString(contentsOfFile: fullPath, encoding: String.Encoding.utf8.rawValue)
print(fileContent)

let parsedCSV = fileContent.components(separatedBy: ", ")
let lol = parsedCSV.map{ $0.components }
print(parsedCSV)

print("If you would like to change this list email the creater. Thank You")

// The following code ask for the teacher list and then compare the two lists.
var teachersBucketList = [String] ()
print ("")
print ("Enter 1 item at a time in the List and press Q to quit")
let input  = readLine()
var inputl = input!
while (inputl != "Q") {
  teachersBucketList.append(inputl)
  let input2 = readLine()
  inputl = input2!
}
print (teachersBucketList)

let compareArray = teachersBucketList.filter(parsedCSV.contains)
print (compareArray)