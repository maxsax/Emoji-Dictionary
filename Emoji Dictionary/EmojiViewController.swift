//
//  EmojiViewController.swift
//  Emoji Dictionary
//
//  Created by Michael on 2018-01-04.
//  Copyright © 2018 Differential Consulting. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    
    var emoji = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Copy the emoji to the large label
        emojiLabel.text = emoji
        
        // Put the right definition in the bottom label
        if emoji == "😊" {
            emojiDefinitionLabel.text = "A happy smiley face!"
        } else if emoji == "💩" {
            emojiDefinitionLabel.text = "A smiling pile of poop!"
        } else if emoji == "🏎" {
            emojiDefinitionLabel.text = "A race car sponsored by Swift"
        } else if emoji == "⛪️" {
            emojiDefinitionLabel.text = "A church with stained glass"
        } else if emoji == "🍎" {
            emojiDefinitionLabel.text = "A red apple with a green leaf"
        } else if emoji == "🥑" {
            emojiDefinitionLabel.text = "Half of an avocado"
        } else {
            emojiDefinitionLabel.text = "I don't know what this is!?!"
        }
    }

}
