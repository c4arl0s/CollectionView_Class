//
//  BookCell.swift
//  BookCover
//
//  Created by Carlos Santiago Cruz on 12/17/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//

import UIKit

class BookCell: UICollectionViewCell {
    @IBOutlet weak var bookCover: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectedBackgroundView = UIView()
        selectedBackgroundView?.backgroundColor = .red
    }
}

// Collection Views call a method on the delegate to let our code know that a cell was selected. The method is called didSelectedItemAt, but we do not need to implement it if we want to trigger a Segue.
