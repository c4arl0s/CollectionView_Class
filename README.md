# ImplementingCollectionViews
Implementing Collection Views to show a Book Cover

# ApplicationData.swift
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

# ViewController.swift

``` swift
//
//  ViewController.swift
//  BookCover
//
//  Created by Carlos Santiago Cruz on 12/17/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//
import UIKit

class ViewController: UIViewController, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return appData.items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionItems.dequeueReusableCell(withReuseIdentifier: "bookCellIdentifier", for: indexPath) as! BookCell
        let file = appData.items[indexPath.item]
        cell.bookCover.image = UIImage(named: file)
        return cell
    }
    
    // because collection views cells are custome cells, we have to define our own subclass of UIViewCell to manage their content. 
    @IBOutlet weak var collectionItems: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionItems.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetails" {
            let controller = segue.destination as! DetailBookViewController
                if let paths = collectionItems.indexPathsForSelectedItems {
                    let selectedCell = paths[0].item
                    controller.selected = selectedCell
                }
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let paths = collectionItems.indexPathsForSelectedItems {
            for path in paths {
                collectionItems.deselectItem(at: path, animated: true)
            }
        }
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            let headerView = collectionItems.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "myHeader", for: indexPath) as! HeaderView
            headerView.headerTitle.text = "My Books"
            headerView.headerImage.image = UIImage(named: "gradientTop")
            return headerView
        case UICollectionView.elementKindSectionFooter:
            let footerView = collectionItems.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: "myFooter", for: indexPath) as! FooterView
            footerView.footerImage.image = UIImage(named: "gradientBottom")
            return footerView
        default:
            assert(false, "Error")
        }
    }
}
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
