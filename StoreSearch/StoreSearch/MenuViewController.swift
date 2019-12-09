//
//  MenuViewController.swift
//  StoreSearch
//
//  Created by Alexander Grishin on 09.12.2019.
//  Copyright © 2019 Alexander Grishin. All rights reserved.
//

import UIKit

protocol  MenuViewControllerDelegate: class {
    func menuViewControllerSendEmail(_ controller: MenuViewController)
}

class MenuViewController: UITableViewController {
    
    weak var delegate: MenuViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK:- Table View Delegates
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0 {
            delegate?.menuViewControllerSendEmail(self)
        }
    }
}
