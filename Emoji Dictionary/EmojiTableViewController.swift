//
//  EmojiTableViewController.swift
//  Emoji Dictionary
//
//  Created by Michael on 2018-01-04.
//  Copyright © 2018 Differential Consulting. All rights reserved.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    // Ctrl-command space for emoji pop-up
    var emojis = ["😊", "💩", "🏎", "⛪️", "🍎", "🥑"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emojis.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "emojiCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = emojis[indexPath.row]
        
        return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "emojiSegue", sender: emojis[indexPath.row])
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // get a reference to the specific view controller so we can
        //  access the custom properties
        let emojiVC = segue.destination as! EmojiViewController
        
        emojiVC.emoji = sender as! String
        
    }
    
 }







