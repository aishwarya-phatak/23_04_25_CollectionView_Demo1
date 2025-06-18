//
//  MenuItemsTableViewController.swift
//  23_04_25_CollectionView_Demo
//
//  Created by Vishal Jagtap on 18/06/25.
//

import UIKit

class MenuItemsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        registerTableViewWithCell()
    }
    
    func registerTableViewWithCell(){
        let uiNib = UINib(nibName: "MenuItemsTableViewCell", bundle: nil)
        self.tableView.register(uiNib, forCellReuseIdentifier: "MenuItemsTableViewCell")
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let menuItemTableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "MenuItemsTableViewCell",
                                                                      for: indexPath) as! MenuItemsTableViewCell
        menuItemTableViewCell.menuItemLabel.text = "Menu Item\(indexPath.row)"
        return menuItemTableViewCell
    }
    
    //MARK : Table View delegate
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}
