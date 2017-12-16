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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Emoji List"
    }
}

extension EmojiListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
