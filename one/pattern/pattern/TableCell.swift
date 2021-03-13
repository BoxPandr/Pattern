//
//  TableCell.swift
//  pattern
//
//  Created by Jz D on 2021/3/13.
//

import UIKit

class TableCell: UITableViewCell {
    
    static let k = "TableCell"
    
    var beSelected: Bool = false{
        didSet{
            if beSelected{
                backgroundColor = UIColor.red
            }
            else{
                backgroundColor = UIColor.white
            }
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
