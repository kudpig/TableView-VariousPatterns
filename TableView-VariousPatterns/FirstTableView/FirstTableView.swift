//
//  FirstTableView.swift
//  TableView-VariousPatterns
//
//  Created by shinichiro kudo on 2021/02/16.
//

import UIKit

class FirstTableView: UIViewController, UITableViewDataSource {
    
    @IBOutlet var table: UITableView!
    let data = ["First", "Second"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        table.dataSource = self
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
}
