//
//  jokesScreen.swift
//  Joke App
//
//  Created by zero on 8/21/18.
//  Copyright © 2018 Abel C. All rights reserved.
//

import UIKit

class jokesScreen: UIViewController {

    var joke = " "
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = joke
        
        if joke == "Boomerang" {
            jokeLabel.text = "What do you call a boomerang that won't come back?.  A Stick"
        }
        if joke == "TV" {
            jokeLabel.text = "Can I watch the TV? Dad. Yes, but don’t turn it on"
        }
        if joke == "Climber" {
            jokeLabel.text = "What did the mountain climber name his son?. Cliff"
        }
        
    }

    @IBOutlet weak var jokeLabel: UILabel!
    
} //END
