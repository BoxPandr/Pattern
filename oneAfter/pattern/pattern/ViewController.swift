//
//  ViewController.swift
//  pattern
//
//  Created by Jz D on 2021/3/13.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var lhs: StateBtn!
    
    @IBOutlet weak var mid: StateBtn!
    
    @IBOutlet weak var rhs: StateBtn!
    
    
    
    
    @IBOutlet weak var table: UITableView!
    
    
    var selectedItem: Int? = nil
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        first()
        
        second()
        
        
        
    }

    
    func first(){
        
        lhs.addTarget(self, action: #selector(btnOne), for: .touchUpInside)
        mid.addTarget(self, action: #selector(btnTwo), for: .touchUpInside)
        rhs.addTarget(self, action: #selector(btnThree), for: .touchUpInside)
    }
    
    
    @objc
    func btnOne(){
        resetAll()
        lhs.beSelected = true
        
    }
    
    
    @objc
    func btnTwo(){
        resetAll()
        mid.beSelected = true
    }

    
    @objc
    func btnThree(){
        resetAll()
        rhs.beSelected = true
    }
    
    
    func resetAll(){
        lhs.beSelected = false
        mid.beSelected = false
        rhs.beSelected = false
    }
}


extension ViewController{
    
    func second(){
        table.register(UINib(nibName: TableCell.k, bundle: nil), forCellReuseIdentifier: TableCell.k)
        table.delegate = self
        table.dataSource = self
        table.rowHeight = 60
        
        table.layer.borderWidth = 1
        table.layer.borderColor = UIColor.magenta.cgColor
        table.reloadData()
    }
    
    
    
}



extension ViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedItem = indexPath.row
        tableView.reloadData()
    }
    
    
}


extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = tableView.dequeueReusableCell(withIdentifier: TableCell.k, for: indexPath)
        if let cel = item as? TableCell{
            if let row = selectedItem, row == indexPath.row{
                cel.beSelected = true
            }
            else{
                cel.beSelected = false
            }
        }
        return item
    }
    
    
}
