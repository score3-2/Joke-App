//
//  JokeTVCTableViewController.swift
//  Joke App
//
//  Created by zero on 8/21/18.
//  Copyright © 2018 Abel C. All rights reserved.
//

import UIKit

class JokeTVC: UITableViewController {

    // VDL
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
} // END