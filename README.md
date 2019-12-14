# ImplementingCollectionViews
Implementing Collection Views to show a Book Cover

``` swift
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
        items = ["book1",
                 "book2",
                 "book3",
                 "book4",
                 "book5",
                 "book6",
                 "book7",
                 "book8",
                 "book9",
                 "book10",
                 "book11",
                 "book12"]
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
```

<p align="center">
    <img src="https://github.com/carlos-santiago-2017/ImplementingCollectionViews/blob/master/ImplementingCollectionViews.png" width="375">
</p>
<p align="center">
    <img src="https://github.com/carlos-santiago-2017/ImplementingCollectionViews/blob/master/DetailView.png" width="375">
</p>
# With Sections

<p align="center">
    <img src="https://github.com/carlos-santiago-2017/ImplementingCollectionViews/blob/master/withSections.png" width="375">
</p>
# with Insets 
<p align="center">
    <img src="https://github.com/carlos-santiago-2017/ImplementingCollectionViews/blob/master/insets.png" width="375">
</p>
