//
//  StateBtn.swift
//  pattern
//
//  Created by Jz D on 2021/3/13.
//

import UIKit

class StateBtn: UIButton {

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

}
