//
//  ApplicationData.swift
//  BookCover
//
//  Created by Carlos Santiago Cruz on 12/17/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//

import Foundation

struct ApplicationData {
    var items: [[String]]
    var categories: [String]
    var itemsData: [String: [String]]
    
    
    init() {
        categories = ["Fiction", "Non Fiction", "Text Books"]
        items = [["book10","book11"],
                 ["book1", "book3", "book5", "book6", "book7", "book8","book12"],
                 ["book2","book4", "book9"]]
        itemsData = [
                     "book1":["Steve Jobs","Walter Isaacson"],
                     "book2":["This ","that"],
                     "book3":["those","there"],
                     "book4":["no matter","the info"],
                     "book5":["info","now"],
                     "book6":["those","pip"],
                     "book7":["info","more info"],
                     "book8":["info","more"],
                     "book9":["more","info"],
                     "book10":["more","more"],
                     "book11":["fish","go back"],
                     "book12":["left","old"] ]
    }
}

var appData = ApplicationData()

