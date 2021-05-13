//
//  BSSAContactosTableViewCell.swift
//  BSSASearchContacts
//
//  Created by Branchbit on 12/05/21.
//

import UIKit

class BASAContactosTableViewCell: UITableViewCell {

    @IBOutlet weak var contactName: UILabel!
    @IBOutlet weak var contactBank: UILabel!
    @IBOutlet weak var contactNumber: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        contactName.font = UIFont.boldSystemFont(ofSize: 18)
//        contactName.textColor = .black
//        contactBank.font = UIFont.systemFont(ofSize: 14)
//        contactBank.textColor = .darkGray
//        contactNumber.font = UIFont.systemFont(ofSize: 15)
//        contactNumber.textColor = .darkGray

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
//        print(contactName.text ?? "")
//        print(contactNumber.text ?? "")
//        print(contactBank.text ?? "")
        // Configure the view for the selected state
    }
    
}
