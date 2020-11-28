//
//  EventsTableViewCell.swift
//  g-world
//
//  Created by Abyl on 11/29/20.
//

import UIKit

class EventsTableViewCell: UITableViewCell {

    @IBOutlet var eventTitle: UILabel!
    @IBOutlet var eventTime: UILabel!
    
    func setEvent(event: Event) {
        eventTitle.text = event.title
        eventTime.text = event.time
    }

}
