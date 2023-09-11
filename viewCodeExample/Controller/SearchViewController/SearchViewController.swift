//
//  SearchViewController.swift
//  viewCodeExample
//
//

import UIKit


class SearchViewController: UITableViewController {
    var cellId = "cellId"
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register( SearchCell.self, forCellReuseIdentifier: cellId)
    }
}

extension SearchViewController {
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  .init(tableView.bounds.width ) *  0.8
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! SearchCell
        return cell
    }
}

