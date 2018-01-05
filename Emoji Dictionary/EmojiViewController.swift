//
//  EmojiViewController.swift
//  Emoji Dictionary
//
//  Created by Michael on 2018-01-04.
//  Copyright © 2018 Differential Consulting. All rights reserved.
//

import UIKit

class EmojiViewController: UIViewController {

    
    // Outlets
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    
    
    // Properties
    var emoji = Emoji()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Copy the emoji to the large label
        emojiLabel.text = emoji.theEmoji
        nameLabel.text = emoji.name
        emojiDefinitionLabel.text = emoji.description
        birthLabel.text = "Birth Year: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
        
    }

}
