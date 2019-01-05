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
        // when is selected the view turns the background color to red
        selectedBackgroundView = UIView()
        selectedBackgroundView?.backgroundColor = .red
    }
}
