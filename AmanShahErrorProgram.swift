/*
Author: Aman Shah
Date: April 19th, 2020
Descriptin: The following code add the item to the file.
*/

import Foundation
class MyList: NSObject {
  private let fileURL : URL = {
    let documentDirectoryURLs = FileManager.default.urls(
      for:  .documentDirectory, in: .userDomainMask)
    let documentDirectoryURL = documentDirectoryURLs.first!
    return documentDirectoryURL.appendingPathComponent("MyList.items")
  }()

  fileprivate var items: [String] = []

  func saveItems () {
    let itemsArray = items as NSArray

    print("Saving items to \(fileURL)")
    if !itemsArray.write(to:fileURL, atomically: true) {
      print("Could not save my list")
    }
  }

  func add(_item: String) {
    items.append(_item)
    saveItems()
  }
}
