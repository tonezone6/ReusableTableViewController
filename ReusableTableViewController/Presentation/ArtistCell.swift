//
//  ArtistCell.swift
//  ReusableTableViewController
//
//  Created by Alex on 25/01/2020.
//  Copyright © 2020 tonezone6. All rights reserved.
//

import UIKit

final class ArtistCell: UITableViewCell {
    static let reuseIdentifier = "artistCell"
   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with artist: Artist) {
        textLabel?.text = artist.name
        
        detailTextLabel?.numberOfLines = 0
        detailTextLabel?.textColor = .gray
        detailTextLabel?.text = artist.description
    }
}
