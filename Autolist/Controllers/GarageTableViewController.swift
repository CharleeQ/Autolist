//
//  GarageTableViewController.swift
//  Autolist
//
//  Created by Кирилл Какареко on 16.02.2022.
//

import UIKit

class GarageTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(GarageCarTableViewCell.self, forCellReuseIdentifier: "garageItemCell")
        tableView.separatorStyle = .none
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "garageItemCell", for: indexPath) as! GarageCarTableViewCell
        cell.carNameLabel.text = "Ford Focus"
        cell.numberPlate.text = "1123KK4"
        return cell
    }
}
