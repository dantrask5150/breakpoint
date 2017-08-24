//
//  GroupFeedVC.swift
//  breakpoint
//
//  Created by trasksystems on 2017/08/23.
//  Copyright © 2017 SysamicKK. All rights reserved.
//

import UIKit


class GroupFeedVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var groupTitleLbl: UILabel!
    @IBOutlet weak var membersLbl: UILabel!
    @IBOutlet weak var sendBtnView: UIView!
    @IBOutlet weak var messageTextField: InsetTextField!
    @IBOutlet weak var sendBtn: UIButton!
    
    var group: Group?
    
    func initData(forGroup group: Group) {
        self.group = group
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sendBtnView.bindToKeyboard()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        groupTitleLbl.text = group?.groupTitle
        DataService.instance.getEmailsFor(group: self.group!) { (returnedEmails) in
            self.membersLbl.text = returnedEmails.joined(separator: ", ")
        }
        
    }
    
    
    @IBAction func sendBtnWasPressed(_ sender: Any) {
    }
    

    
    @IBAction func backBtnWasPressed(_ sender: Any) {dismiss(animated: true, completion: nil)
    }
    
}
