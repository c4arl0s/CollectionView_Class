# ImplementingCollectionViews
Implementing Collection Views to show a Book Cover

<<<<<<< HEAD
# Collection Views

- A collection of views
- Collection views are created the same way as tables.

# Collection View Cell

- They are empty cells that we have to customize as we did before for custom table view cells.
- UICollectionViewCell class creates the cell, and contain three empty views to manage their content:
- a view for the content
- a view for the background
- second background view that is shown when the cell is selected.

### contentView
### backgroundView
### selectedbackgroundView

# Collection View Flow Layout

- The big difference between TableViews and Collection Views is that the position of the cells in a Collection View are not determinated by the view, they are set by a layout object that works along with the Collection View to present the cells on the screen. This object is created from a subclass of the UICollectionViewLayout class. 

- Collection Views include by default a subclass called UICollectionViewFlowLayout that provides a very customizable grid-like layout that is usually more than enough for our projects. The layout is called Flow

# Collection View Protocols

- UICollectionViewDelegate
- UICollectionViewDataSource

# Layout Protocol

- The Flow layout can also designate a delegate to get specific values for individual cells.
- The methods are defined in the UICollectionViewDelegate-FlowLayout protocol.


=======
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
>>>>>>> 08c0f9c030a55886e228c983691f8d85cdf983e2
