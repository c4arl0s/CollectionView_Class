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
        selectedBackgroundView?.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
    }
}
