//
//  TableCell.swift
//  pattern
//
//  Created by Jz D on 2021/3/13.
//

import UIKit

class TableCell: UITableViewCell {
    
    static let k = "TableCell"
    
    
    
    @IBOutlet weak var coverView: UIView!
    
    
    let dftColor = UIColor.white
    
    var beSelected: Bool = false{
        didSet{
            if beSelected{
                coverView.backgroundColor = UIColor.red
            }
            else{
                coverView.backgroundColor = dftColor
            }
        }
    }
    
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        coverView.backgroundColor = dftColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
