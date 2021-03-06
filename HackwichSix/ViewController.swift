//
//  ViewController.swift
//  HackwichSix
//
//  Created by CM Student on 3/3/20.
//  Copyright © 2020 Charles Ombao. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var myFriendsArray = ["Vien","Michael B.", "Mason"]
    var myFavoriteCountries = ["France", "Japan", "United Kingdom"]
    var myFriendsHomeArray = [ "Mililani", "Waipahu", "Ewa Beach"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        //Dispose of any resources that can be recreated
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")
        let text = myFriendsArray[indexPath.row]
        cell?.textLabel?.text = text
        cell?.detailTextLabel?.text = myFriendsHomeArray[indexPath.row]
        return cell!
    }
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriendsArray.count
    }

}

