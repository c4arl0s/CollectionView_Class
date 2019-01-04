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
                     "book2":["jdskajdksa","dhsahjdsa"],
                     "book3":["jdsajdka","hdjsahdjsa"],
                     "book4":["djaskdjksa","dhjsahdja"],
                     "book5":["dhjsadhjsa","dhjsahd"],
                     "book6":["yeuwqyu","bcxnzbc"],
                     "book7":["eyuyu","jdsahj"],
                     "book8":["djsahjd","udwq"],
                     "book9":["ajdkasjkd","djasjdksa"],
                     "book10":["djsajdka","jdsakjkd"],
                     "book11":["djskajdkas","dsajdksajk"],
                     "book12":["djksajdka","jdksajkd"] ]
    }
}

var appData = ApplicationData()

