//
//  ItemsTableViewController.swift
//  ReusableTableViewController
//
//  Created by Alex on 25/01/2020.
//  Copyright © 2020 tonezone6. All rights reserved.
//

import UIKit

struct Section<Item> {
    let title: String
    let items: [Item]
}

struct CellDescriptor {
    let cellClass: UITableViewCell.Type
    let reuseIdentifier: String
    
    let configure: (UITableViewCell) -> ()
    
    init<Cell: UITableViewCell>(reuseIdentifier: String, configure: @escaping (Cell) -> ()) {
        self.cellClass = Cell.self
        self.reuseIdentifier = reuseIdentifier
     
        self.configure = { cell in
            configure(cell as! Cell)
        }
    }
}

final class ItemsTableViewController<Item>: UITableViewController {
    let sections: [Section<Item>]
    let cellDescriptor: (Item) -> CellDescriptor
    
    var didSelect: (Item) -> () = { _ in }
    var reuseIdentifiers: [String] = []
    
    init(sections: [Section<Item>], cellDescriptor: @escaping (Item) -> CellDescriptor) {
        self.sections = sections
        self.cellDescriptor = cellDescriptor
        super.init(style: .plain)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = sections[indexPath.section].items[indexPath.row]
        didSelect(item)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections[section].items.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section].title
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = sections[indexPath.section].items[indexPath.row]
        let descriptor = cellDescriptor(item)
        
        if reuseIdentifiers.contains(descriptor.reuseIdentifier) == false {
            tableView.register(descriptor.cellClass, forCellReuseIdentifier: descriptor.reuseIdentifier)
            reuseIdentifiers.append(descriptor.reuseIdentifier)
        }

        let cell = tableView.dequeueReusableCell(withIdentifier: descriptor.reuseIdentifier, for: indexPath)
        descriptor.configure(cell)
        return cell
    }
}
