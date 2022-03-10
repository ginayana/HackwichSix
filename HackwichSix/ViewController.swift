//
//  ViewController.swift
//  HackwichSix
//
//  Created by Gina Yanagihara on 3/8/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var myFriendsArray = ["Sara", "Nicole", "Grant"]
    var dreamDestinations = ["Osaka", "Tokyo", "Kyoto", "Kumamoto", "Yamaguchi"]
    var friendsHomeArray = ["Honolulu", "Kapolei", "Kaneohe"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return myFriendsArray.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")
        let text = myFriendsArray[indexPath.row]
        cell?.textLabel?.text = text
        cell?.detailTextLabel?.text = friendsHomeArray[indexPath.row]
        return cell!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

