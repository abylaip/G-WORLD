//
//  EventsViewController.swift
//  g-world
//
//  Created by Abyl on 11/29/20.
//

import UIKit

class EventsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var EventsTableViewController: UITableView!
    var events: [Event] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        events = createArray()
        
        EventsTableViewController.delegate = self
        EventsTableViewController.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func createArray() -> [Event] {
        var tempEvents: [Event] = []
        
        let event1 = Event(title: "Charity: We started this event to help families which have problems due to coronavirus", time: "08-12-2020 15:00")
        let event2 = Event(title: "Facultatives: We have gathered the best specialists who can teach C++", time: "25-11-2020 12:30")
        let event3 = Event(title: "Challenges: You can win a trip to USA in a Hackathon", time: "29-11-2020 08:00")
        let event4 = Event(title: "Research: Our biologists are studying new shark species", time: "10-09-2020 17:40")
        let event5 = Event(title: "Scholarships: Every year the number of brilliant students increases", time: "01-09-2020 20:00")
        
        tempEvents.append(event1)
        tempEvents.append(event2)
        tempEvents.append(event3)
        tempEvents.append(event4)
        tempEvents.append(event5)
        
        return tempEvents
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return events.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let event = events[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! EventsTableViewCell
        cell.setEvent(event: event)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        90
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
