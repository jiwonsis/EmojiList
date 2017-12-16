//
//  EmojiListViewController.swift
//  Emoji Dictionary
//
//  Created by Scott moon on 16/12/2017.
//  Copyright © 2017 Scott moon. All rights reserved.
//

import UIKit

class EmojiListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Emoji List"
        emojis = createEmojis()
        setupUI()
    }
    
    func setupUI() {
        tableView.register(EmojiCell.self)
    }
    
    func createEmojis() -> [Emoji] {
        let smiley = Emoji()
        smiley.theEmoji = "😀"
        smiley.def = "A happy smiling face"
        smiley.birthYear = 2010
        smiley.category = "Faces"
        
        let avo = Emoji()
        avo.theEmoji = "🥑"
        avo.def = "A nice green avocado"
        avo.birthYear = 2017
        avo.category = "Food"
        
        return [smiley, avo]
    }
}

extension EmojiListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let backBarButton = UIBarButtonItem()
        backBarButton.title = "Back"
        navigationItem.backBarButtonItem = backBarButton
        
        let emojiDefinitionViewController = EmojiDefinitionViewController()
        emojiDefinitionViewController.emoji = emojis[indexPath.row]
        navigationController?.pushViewController(emojiDefinitionViewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: EmojiCell = tableView.dequeueReusableCell(forIndexPath: indexPath)
        
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = "\(emoji.theEmoji) - \(emoji.birthYear)"
        
    
        return cell
    }
}
