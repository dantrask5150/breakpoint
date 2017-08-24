//
//  GroupFeedCell.swift
//  breakpoint
//
//  Created by trasksystems on 2017/08/23.
//  Copyright © 2017 SysamicKK. All rights reserved.
//

import UIKit

class GroupFeedCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var emailLbl: UILabel!
    
    @IBOutlet weak var contentLbl: UILabel!
    
    func configureCell(profileImage: UIImage, email: String, content: String) {
    self.profileImage.image = profileImage
    self.emailLbl.text = email
    self.contentLbl.text = content
    }
    
}
