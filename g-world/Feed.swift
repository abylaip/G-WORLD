//
//  Feed.swift
//  g-world
//
//  Created by Abyl on 11/29/20.
//

import Foundation
import UIKit

class Feed {
    var image: UIImage
    var title: String
    var description: String
    
    init(image: UIImage, title: String, description: String) {
        self.image = image
        self.title = title
        self.description = description
    }
}
