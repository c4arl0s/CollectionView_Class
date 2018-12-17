//
//  ApplicationData.swift
//  BookCover
//
//  Created by Carlos Santiago Cruz on 12/17/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//

import Foundation

struct ApplicationData {
    var items: [String]
    var itemsData: [String: [String]]
    
    init() {
        items = ["book1", "book2", "book3", "book4", "book5", "book6", "book7", "book8", "book9", "book10", "book11", "book12"]
        itemsData = ["book1":["Steve Jobs","Walter Isaacson"],
                     "book2":["",""],
                     "book3":["",""],
                     "book4":["",""],
                     "book5":["",""],
                     "book6":["",""],
                     "book7":["",""],
                     "book8":["",""],
                     "book9":["",""],
                     "book10":["",""],
                     "book11":["",""],
                     "book12":["",""],
        ]
    }
}

var AppData = ApplicationData()

