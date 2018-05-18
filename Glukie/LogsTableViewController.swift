//
//  LogsTableViewController.swift
//  Glukie
//
//  Created by Akerke Okapova on 4/25/18.
//  Copyright © 2018 Akerke Okapova. All rights reserved.
//

import UIKit

extension Constants {
    
    static let logCellIdentifier = "LogCell"
}

class LogsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let img = #imageLiteral(resourceName: "background-blue")
        self.tableView.layer.contents = img.cgImage
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cache.logs.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.logCellIdentifier, for: indexPath) as! LogTableViewCell
        cell.log = cache.logs[indexPath.row]

        return cell
    }
}
