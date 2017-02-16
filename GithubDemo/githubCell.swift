//
//  githubCell.swift
//  GithubDemo
//
//  Created by Edison Lam on 2/15/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class githubCell: UITableViewCell {

    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var stars: UILabel!
    @IBOutlet weak var forks: UILabel!
    @IBOutlet weak var desc: UILabel!
    
    var repo : GithubRepo! {
        didSet {
            avatar.setImageWith(URL(string:repo.ownerAvatarURL!)!)
            name.text = repo.name
            stars.text = "\(repo.stars)"
            forks.text = "\(repo.forks)"
            desc.text = repo.repoDescription
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
