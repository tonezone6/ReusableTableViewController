//
//  AlbumCell.swift
//  ReusableTableViewController
//
//  Created by Alex on 25/01/2020.
//  Copyright © 2020 tonezone6. All rights reserved.
//

import UIKit

final class AlbumCell: UITableViewCell {
    static let reuseIdentifier = "albumCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .value1, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with album: Album) {
        textLabel?.text = album.title
        detailTextLabel?.text = "\(album.year)"
    }
}
