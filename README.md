# ImplementingCollectionViews
Implementing Collection Views to show a Book Cover

<<<<<<< HEAD
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
=======
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

- The big difference between TableViews and Collection Views is that the position of the cells in a Collection View are not determinated by the view, they are set by a layout object that works along with the Collection View to present the cells on the screen. This object is created from a subclass of the **UICollectionViewLayout** class. 

- Collection Views include by default a subclass called **UICollectionViewFlowLayout** that provides a very customizable **grid-like** layout that is usually more than enough for our projects. The layout is called Flow

- scrollDirection
- minimumInteritemSpacing
- minimumLineSpacing
- sectionInset
- itemSize
- estimatedItemSize

# Collection View Protocols

- UICollectionViewDelegate
- UICollectionViewDataSource

# Layout Protocol

- The Flow layout can also designate a delegate to get specific values for individual cells.
- The methods are defined in the UICollectionViewDelegate-FlowLayout protocol.

# Implementing Collection Views (process to configure)

- Implement delegate methods to report the number of cells in the section (only one by default), and provide the cells.
- Get the prototype cell calling the dequeueReusableCell() method with the identifier assigned to the cell from the Attributes Inspector panel ("myCell" in this example), cast it as our subclass, and then configure the elements in the cell.

# ¿what is the difference from tableViews ?

- The indexPath structure includes three properties: section, row, and item.
- The section and row properties are used to identify the sections and each cell on a Table View, but Collection views considere a cell to be an item, not an entire row, and therefore they use the section and item properties instead.

# What happened when we add a Collection View (drag and drop) to the storyboard ?

- The system creates an UICollectionViewFlowLayout object and assigns it to the collectionView-Layout property of the collection view's object.
- This layout object is configured by default to position the cells in a grid. The result is shown in the following figure:

# Header and Footer Sizing





>>>>>>> cc4e3c2d0d4dd76c7d5954ce7e0325cf6c8b0dbb
