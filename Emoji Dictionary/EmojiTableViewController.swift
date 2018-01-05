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
    var emojis : [Emoji] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojis = createEmojis()
    }



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "emojiCell", for: indexPath)

        let emoji = emojis[indexPath.row]
        
        // Configure the cell...
        cell.textLabel?.text = "\(emoji.theEmoji) \(emoji.name)"
        
        return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "emojiSegue", sender: emojis[indexPath.row])
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // get a reference to the specific view controller so we can
        //  access the custom properties
        let emojiVC = segue.destination as! EmojiViewController
        
        emojiVC.emoji = sender as! Emoji
        
    }
    
    func createEmojis() -> [Emoji] {
        
        let smiley = Emoji()
        smiley.theEmoji = "😊"
        smiley.name = "Smiley"
        smiley.description = "A happy smiling face"
        smiley.birthYear = 2010
        smiley.category = "Faces"
        
        
        let avocado = Emoji()
        avocado.theEmoji = "🥑"
        avocado.name = "Avocado"
        avocado.description = "A nice ripe avocado"
        avocado.birthYear = 2017
        avocado.category = "Food"
        
        
        let car = Emoji()
        car.theEmoji = "🏎"
        car.name = "Race Car"
        car.description = "A red racing car"
        car.birthYear = 2012
        car.category = "Vehicles"
        
        
        let church = Emoji()
        church.theEmoji = "⛪️"
        church.name = "Church"
        church.description = "A white church with stained glass"
        church.birthYear = 2010
        church.category = "Buildings"
        
        
        let apple = Emoji()
        apple.theEmoji = "🍎"
        apple.name = "Apple"
        apple.description = "A red apple with green leaves"
        apple.birthYear = 2010
        apple.category = "Food"
        
        
        let poop = Emoji()
        poop.theEmoji = "💩"
        poop.name = "Poop"
        poop.description = "A smiling pile of poop"
        poop.birthYear = 2011
        poop.category = "Funny"
    
        
        return [smiley, avocado, car, church, apple, poop]
    }
    
 }







