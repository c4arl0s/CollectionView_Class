//
//  DetailBookViewController.swift
//  BookCover
//
//  Created by Carlos Santiago Cruz on 12/17/18.
//  Copyright © 2018 Carlos Santiago Cruz. All rights reserved.
//

import UIKit

class DetailBookViewController: UIViewController {
    @IBOutlet weak var bookCover: UIImageView!
    @IBOutlet weak var bookTitle: UILabel!
    @IBOutlet weak var bookAuthor: UILabel!
    var selected: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let file = appData.items[selected]
        bookCover.image = UIImage(named: file)
        if let data = appData.itemsData[file] {
            bookTitle.text = data[0]
            bookAuthor.text = data[1]
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
