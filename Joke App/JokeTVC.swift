//
//  JokeTVCTableViewController.swift
//  Joke App
//
//  Created by zero on 8/21/18.
//  Copyright © 2018 Abel C. All rights reserved.
//

import UIKit

class JokeTVC: UITableViewController {
    
var jokes = ["Boomerang", "TV", "Climber"]
//    var jokes = ["What do you call a boomerang that won't come back?", "Can I watch the TV? Dad", "What did the mountain climber name his son?"]
//    var answers = ["A Stick", "Yes, but don’t turn it on", "Cliff"]

    // VDL
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return jokes.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        // Configure the cell...
        cell.textLabel?.text = jokes[indexPath.row]
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedJoke = jokes[indexPath.row]
        // Segue to 2 Screen
        performSegue(withIdentifier: "JokeDefinition", sender: selectedJoke)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let jokeVC = segue.destination as? jokesScreen {
            if let selectedJoke = sender as? String {
                  jokeVC.joke = selectedJoke
            }
          
        }
    }
    
} // END
