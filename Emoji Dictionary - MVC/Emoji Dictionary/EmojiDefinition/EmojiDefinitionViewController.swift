//
//  EmojiDefunitionViewController.swift
//  Emoji Dictionary
//
//  Created by Scott moon on 17/12/2017.
//  Copyright © 2017 Scott moon. All rights reserved.
//

import UIKit

class EmojiDefinitionViewController: UIViewController {

    
    @IBOutlet weak var emojiLable: UILabel!
    @IBOutlet weak var emojiDefinitionLable: UILabel!
    @IBOutlet weak var birthLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLable.text = emoji.theEmoji
        emojiDefinitionLable.text = emoji.def
        birthLabel.text = "Release Date: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.category)"
    }

}
