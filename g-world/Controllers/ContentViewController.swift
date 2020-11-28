//
//  ContentViewController.swift
//  g-world
//
//  Created by Abyl on 11/29/20.
//

import UIKit

class ContentViewController: UIViewController {

    @IBOutlet var mainImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mainImage.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
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
