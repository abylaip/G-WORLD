//
//  FeedsViewController.swift
//  g-world
//
//  Created by Abyl on 11/29/20.
//

import UIKit

class FeedsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var FeedsTableViewController: UITableView!
    
    var feeds: [Feed] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        feeds = createArray()
        
        FeedsTableViewController.delegate = self
        FeedsTableViewController.dataSource = self
    }
    
    func createArray() -> [Feed] {
        var tempFeeds: [Feed] = []
        
        let feed1 = Feed(image: UIImage(named: "charity")!, title: "Charity", description: "We started this event to help families which have problems due to coronavirus")
        let feed2 = Feed(image: UIImage(named: "coronavirus")!, title: "COVID-19", description: "Due to COVID-19 many people went to the hospital")
        let feed3 = Feed(image: UIImage(named: "facultative")!, title: "Facultatives", description: "We have gathered the best specialists who can teach C++")
        let feed4 = Feed(image: UIImage(named: "projects")!, title: "Challenges ", description: "You can win a trip to USA in a Hackathon")
        let feed5 = Feed(image: UIImage(named: "research")!, title: "Research", description: "Our biologists are studying new shark species")
        let feed6 = Feed(image: UIImage(named: "scholarships")!, title: "Scholarships", description: "Every year the number of brilliant students increases")
        
        tempFeeds.append(feed1)
        tempFeeds.append(feed2)
        tempFeeds.append(feed3)
        tempFeeds.append(feed4)
        tempFeeds.append(feed5)
        tempFeeds.append(feed6)
        
        return tempFeeds
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return feeds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let feed = feeds[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! FeedsTableViewCell
        cell.feedImage.layer.cornerRadius = 10
        cell.setFeed(feed: feed)
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(identifier: "ContentViewController")
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.pushViewController(vc, animated: true)

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
