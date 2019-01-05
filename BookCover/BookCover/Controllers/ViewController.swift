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
        let file = appData.items[indexPath.section][indexPath.item]
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

