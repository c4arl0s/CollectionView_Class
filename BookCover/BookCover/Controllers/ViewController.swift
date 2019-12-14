//
//  ViewController.swift
//  BookCover
//
//  Created by Carlos Santiago Cruz on 12/17/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return appData.items[section].count
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return appData.categories.count
        // Sections are identified with a consecutive index starting from 0. The data has to observe this pattern, and this is why in the model we use a multidimensional array to store the values
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
        // asign the dataSource of collectionItems to this Viewcontroller
        collectionItems.dataSource = self
        // FlowLayout
        collectionItems.backgroundColor = UIColor.white
        let layout = collectionItems.collectionViewLayout as! UICollectionViewFlowLayout
        layout.sectionInset = UIEdgeInsets(top: 25, left: 20, bottom: 25, right: 20)
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
            headerView.headerTitle.text = appData.categories[indexPath.section]
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
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        var width: CGFloat = 140
//        var height: CGFloat = 180
//        let file = appData.items[indexPath.section][indexPath.item]
//        
//    }
}

