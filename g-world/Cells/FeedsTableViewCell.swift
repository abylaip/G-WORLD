//
//  FeedsTableViewCell.swift
//  g-world
//
//  Created by Abyl on 11/29/20.
//

import UIKit

class FeedsTableViewCell: UITableViewCell {

    @IBOutlet var feedImage: UIImageView!
    @IBOutlet var feedName: UILabel!
    @IBOutlet var feedDescription: UITextView!
    
    
    func setFeed(feed: Feed) {
        feedImage.image = feed.image
        feedName.text = feed.title
        feedDescription.text = feed.description
    }

}
